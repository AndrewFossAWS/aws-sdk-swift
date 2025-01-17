// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon CloudWatch Internet Monitor provides visibility into how internet issues impact the performance and availability between your applications hosted on Amazon Web Services and your end users. It can reduce the time it takes for you to diagnose internet issues from days to minutes. Internet Monitor uses the connectivity data that Amazon Web Services captures from its global networking footprint to calculate a baseline of performance and availability for internet traffic. This is the same data that Amazon Web Services uses to monitor internet uptime and availability. With those measurements as a baseline, Internet Monitor raises awareness for you when there are significant problems for your end users in the different geographic locations where your application runs. Internet Monitor publishes internet measurements to CloudWatch Logs and CloudWatch Metrics, to easily support using CloudWatch tools with health information for geographies and networks specific to your application. Internet Monitor sends health events to Amazon EventBridge so that you can set up notifications. If an issue is caused by the Amazon Web Services network, you also automatically receive an Amazon Web Services Health Dashboard notification with the steps that Amazon Web Services is taking to mitigate the problem. To use Internet Monitor, you create a monitor and associate your application's resources with it - VPCs, NLBs, CloudFront distributions, or WorkSpaces directories - so Internet Monitor can determine where your application's internet traffic is. Internet Monitor then provides internet measurements from Amazon Web Services that are specific to the locations and ASNs (typically, internet service providers or ISPs) that communicate with your application. For more information, see [Using Amazon CloudWatch Internet Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html) in the Amazon CloudWatch User Guide.
public protocol InternetMonitorClientProtocol {
    /// Performs the `CreateMonitor` operation on the `InternetMonitor20210603` service.
    ///
    /// Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is built based on information from the application resources that you add: VPCs, Network Load Balancers (NLBs), Amazon CloudFront distributions, and Amazon WorkSpaces directories. Internet Monitor then publishes internet measurements from Amazon Web Services that are specific to the city-networks. That is, the locations and ASNs (typically internet service providers or ISPs), where clients access your application. For more information, see [Using Amazon CloudWatch Internet Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html) in the Amazon CloudWatch User Guide. When you create a monitor, you choose the percentage of traffic that you want to monitor. You can also set a maximum limit for the number of city-networks where client traffic is monitored, that caps the total traffic that Internet Monitor monitors. A city-network maximum is the limit of city-networks, but you only pay for the number of city-networks that are actually monitored. You can update your monitor at any time to change the percentage of traffic to monitor or the city-networks maximum. For more information, see [Choosing a city-network maximum value](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html) in the Amazon CloudWatch User Guide.
    ///
    /// - Parameter CreateMonitorInput : [no documentation found]
    ///
    /// - Returns: `CreateMonitorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `ConflictException` : The requested resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `LimitExceededException` : The request exceeded a service quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func createMonitor(input: CreateMonitorInput) async throws -> CreateMonitorOutput
    /// Performs the `DeleteMonitor` operation on the `InternetMonitor20210603` service.
    ///
    /// Deletes a monitor in Amazon CloudWatch Internet Monitor.
    ///
    /// - Parameter DeleteMonitorInput : [no documentation found]
    ///
    /// - Returns: `DeleteMonitorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func deleteMonitor(input: DeleteMonitorInput) async throws -> DeleteMonitorOutput
    /// Performs the `GetHealthEvent` operation on the `InternetMonitor20210603` service.
    ///
    /// Gets information the Amazon CloudWatch Internet Monitor has created and stored about a health event for a specified monitor. This information includes the impacted locations, and all the information related to the event, by location. The information returned includes the impact on performance, availability, and round-trip time, information about the network providers (ASNs), the event type, and so on. Information rolled up at the global traffic level is also returned, including the impact type and total traffic impact.
    ///
    /// - Parameter GetHealthEventInput : [no documentation found]
    ///
    /// - Returns: `GetHealthEventOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func getHealthEvent(input: GetHealthEventInput) async throws -> GetHealthEventOutput
    /// Performs the `GetMonitor` operation on the `InternetMonitor20210603` service.
    ///
    /// Gets information about a monitor in Amazon CloudWatch Internet Monitor based on a monitor name. The information returned includes the Amazon Resource Name (ARN), create time, modified time, resources included in the monitor, and status information.
    ///
    /// - Parameter GetMonitorInput : [no documentation found]
    ///
    /// - Returns: `GetMonitorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func getMonitor(input: GetMonitorInput) async throws -> GetMonitorOutput
    /// Performs the `GetQueryResults` operation on the `InternetMonitor20210603` service.
    ///
    /// Return the data for a query with the Amazon CloudWatch Internet Monitor query interface. Specify the query that you want to return results for by providing a QueryId and a monitor name. For more information about using the query interface, including examples, see [Using the Amazon CloudWatch Internet Monitor query interface](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html) in the Amazon CloudWatch Internet Monitor User Guide.
    ///
    /// - Parameter GetQueryResultsInput : [no documentation found]
    ///
    /// - Returns: `GetQueryResultsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `LimitExceededException` : The request exceeded a service quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func getQueryResults(input: GetQueryResultsInput) async throws -> GetQueryResultsOutput
    /// Performs the `GetQueryStatus` operation on the `InternetMonitor20210603` service.
    ///
    /// Returns the current status of a query for the Amazon CloudWatch Internet Monitor query interface, for a specified query ID and monitor. When you run a query, check the status to make sure that the query has SUCCEEDED before you review the results.
    ///
    /// * QUEUED: The query is scheduled to run.
    ///
    /// * RUNNING: The query is in progress but not complete.
    ///
    /// * SUCCEEDED: The query completed sucessfully.
    ///
    /// * FAILED: The query failed due to an error.
    ///
    /// * CANCELED: The query was canceled.
    ///
    /// - Parameter GetQueryStatusInput : [no documentation found]
    ///
    /// - Returns: `GetQueryStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `LimitExceededException` : The request exceeded a service quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func getQueryStatus(input: GetQueryStatusInput) async throws -> GetQueryStatusOutput
    /// Performs the `ListHealthEvents` operation on the `InternetMonitor20210603` service.
    ///
    /// Lists all health events for a monitor in Amazon CloudWatch Internet Monitor. Returns information for health events including the event start and end time and the status. Health events that have start times during the time frame that is requested are not included in the list of health events.
    ///
    /// - Parameter ListHealthEventsInput : [no documentation found]
    ///
    /// - Returns: `ListHealthEventsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func listHealthEvents(input: ListHealthEventsInput) async throws -> ListHealthEventsOutput
    /// Performs the `ListMonitors` operation on the `InternetMonitor20210603` service.
    ///
    /// Lists all of your monitors for Amazon CloudWatch Internet Monitor and their statuses, along with the Amazon Resource Name (ARN) and name of each monitor.
    ///
    /// - Parameter ListMonitorsInput : [no documentation found]
    ///
    /// - Returns: `ListMonitorsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func listMonitors(input: ListMonitorsInput) async throws -> ListMonitorsOutput
    /// Performs the `ListTagsForResource` operation on the `InternetMonitor20210603` service.
    ///
    /// Lists the tags for a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `BadRequestException` : A bad request was received.
    /// - `InternalServerErrorException` : There was an internal server error.
    /// - `NotFoundException` : The request specifies something that doesn't exist.
    /// - `TooManyRequestsException` : There were too many requests.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `StartQuery` operation on the `InternetMonitor20210603` service.
    ///
    /// Start a query to return data for a specific query type for the Amazon CloudWatch Internet Monitor query interface. Specify a time period for the data that you want returned by using StartTime and EndTime. You filter the query results to return by providing parameters that you specify with FilterParameters. For more information about using the query interface, including examples, see [Using the Amazon CloudWatch Internet Monitor query interface](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html) in the Amazon CloudWatch Internet Monitor User Guide.
    ///
    /// - Parameter StartQueryInput : [no documentation found]
    ///
    /// - Returns: `StartQueryOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `LimitExceededException` : The request exceeded a service quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func startQuery(input: StartQueryInput) async throws -> StartQueryOutput
    /// Performs the `StopQuery` operation on the `InternetMonitor20210603` service.
    ///
    /// Stop a query that is progress for a specific monitor.
    ///
    /// - Parameter StopQueryInput : [no documentation found]
    ///
    /// - Returns: `StopQueryOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `LimitExceededException` : The request exceeded a service quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func stopQuery(input: StopQueryInput) async throws -> StopQueryOutput
    /// Performs the `TagResource` operation on the `InternetMonitor20210603` service.
    ///
    /// Adds a tag to a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor. You can add a maximum of 50 tags in Internet Monitor. A minimum of one tag is required for this call. It returns an error if you use the TagResource request with 0 tags.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `BadRequestException` : A bad request was received.
    /// - `InternalServerErrorException` : There was an internal server error.
    /// - `NotFoundException` : The request specifies something that doesn't exist.
    /// - `TooManyRequestsException` : There were too many requests.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `InternetMonitor20210603` service.
    ///
    /// Removes a tag from a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `BadRequestException` : A bad request was received.
    /// - `InternalServerErrorException` : There was an internal server error.
    /// - `NotFoundException` : The request specifies something that doesn't exist.
    /// - `TooManyRequestsException` : There were too many requests.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateMonitor` operation on the `InternetMonitor20210603` service.
    ///
    /// Updates a monitor. You can update a monitor to change the percentage of traffic to monitor or the maximum number of city-networks (locations and ASNs), to add or remove resources, or to change the status of the monitor. Note that you can't change the name of a monitor. The city-network maximum that you choose is the limit, but you only pay for the number of city-networks that are actually monitored. For more information, see [Choosing a city-network maximum value](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html) in the Amazon CloudWatch User Guide.
    ///
    /// - Parameter UpdateMonitorInput : [no documentation found]
    ///
    /// - Returns: `UpdateMonitorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permission to perform this action.
    /// - `InternalServerException` : An internal error occurred.
    /// - `LimitExceededException` : The request exceeded a service quota.
    /// - `ResourceNotFoundException` : The request specifies a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : Invalid request.
    func updateMonitor(input: UpdateMonitorInput) async throws -> UpdateMonitorOutput
}

public enum InternetMonitorClientTypes {}
