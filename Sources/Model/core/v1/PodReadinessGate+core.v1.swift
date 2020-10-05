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
/// core.v1.PodReadinessGate
///

import Foundation

public extension core.v1 {

	///
	/// PodReadinessGate contains the reference to a pod condition
	///
	struct PodReadinessGate: KubernetesResource {
		///
		/// ConditionType refers to a condition in the pod's condition list with matching type.
		///
		public var conditionType: String
		///
		/// Default memberwise initializer
		///
		public init(
			conditionType: String
		) {
			self.conditionType = conditionType
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PodReadinessGate {

	private enum CodingKeys: String, CodingKey {
		case conditionType = "conditionType"
	}

}

