//
// Copyright 2020 Swiftkube Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

// MARK: - UnstructuredResource

/// Unstructured allows objects that do not have registered `KubernetesAPIResource`s to
/// be manipulated generically. This can be used to deal with the API objects from a plug-in.
/// Unstructured objects still have functioning TypeMeta features-- kind, version, etc.
///
@dynamicMemberLookup
public struct UnstructuredResource: KubernetesAPIResource {

	private var properties = [String: Any]()

	public init(properties: Dictionary<String, Any>) {
		self.properties = properties
	}

	/// This resource's `apiVersion`.
	public var apiVersion: String {
		properties["apiVersion"] as? String ?? ""
	}

	/// This resource's `kind`.
	public var kind: String {
		properties["kind"] as? String ?? ""
	}

	/// This associated `metadata` of this resource.
	public var metadata: meta.v1.ObjectMeta? {
		properties["metadata"] as? meta.v1.ObjectMeta
	}

	public subscript<T>(dynamicMember key: String) -> T? {
		properties[key] as? T
	}
}

// MARK: Codable

extension UnstructuredResource: Codable {

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: JSONCodingKeys.self)
		var properties = [String: Any]()

		for key in container.allKeys {
			switch key.stringValue {
			case "apiVersion": properties[key.stringValue] = try container.decode(String.self, forKey: key)
			case "kind": properties[key.stringValue] = try container.decode(String.self, forKey: key)
			case "metadata": properties[key.stringValue] = try container.decode(meta.v1.ObjectMeta.self, forKey: key)
			default: properties[key.stringValue] = try container.decodeAnyIfPresent(forKey: key)
			}
		}

		self.properties = properties
	}

	public func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: JSONCodingKeys.self)

		try properties.forEach { key, value in
			try encodingContainer.encodeAny(value, forKey: JSONCodingKeys(stringValue: key)!)
		}
	}
}
