//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// flowcontrol.v1alpha1.ServiceAccountSubject
///

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// ServiceAccountSubject holds detailed information for service-account-kind subject.
	///
	struct ServiceAccountSubject: KubernetesResource {
		///
		/// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
		///
		public var name: String
		///
		/// `namespace` is the namespace of matching ServiceAccount objects. Required.
		///
		public var namespace: String
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			namespace: String
		) {
			self.name = name
			self.namespace = namespace
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.ServiceAccountSubject {

	private enum CodingKeys: String, CodingKey {
		case name = "name"
		case namespace = "namespace"
	}

}

