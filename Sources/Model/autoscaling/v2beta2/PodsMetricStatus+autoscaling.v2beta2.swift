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
/// autoscaling.v2beta2.PodsMetricStatus
///

import Foundation

public extension autoscaling.v2beta2 {

	///
	/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
	///
	struct PodsMetricStatus: KubernetesResource {
		///
		/// current contains the current value for the given metric
		///
		public var current: autoscaling.v2beta2.MetricValueStatus
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2beta2.MetricIdentifier
		///
		/// Default memberwise initializer
		///
		public init(
			current: autoscaling.v2beta2.MetricValueStatus,
			metric: autoscaling.v2beta2.MetricIdentifier
		) {
			self.current = current
			self.metric = metric
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.PodsMetricStatus {

	private enum CodingKeys: String, CodingKey {
		case current = "current"
		case metric = "metric"
	}

}

