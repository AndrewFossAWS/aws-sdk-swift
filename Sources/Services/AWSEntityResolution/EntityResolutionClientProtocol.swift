// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Welcome to the Entity Resolution API Reference. Entity Resolution is an Amazon Web Services service that provides pre-configured entity resolution capabilities that enable developers and analysts at advertising and marketing companies to build an accurate and complete view of their consumers. With Entity Resolution, you can match source records containing consumer identifiers, such as name, email address, and phone number. This is true even when these records have incomplete or conflicting identifiers. For example, Entity Resolution can effectively match a source record from a customer relationship management (CRM) system with a source record from a marketing system containing campaign information. To learn more about Entity Resolution concepts, procedures, and best practices, see the [Entity Resolution User Guide](https://docs.aws.amazon.com/entityresolution/latest/userguide/what-is-service.html).
public protocol EntityResolutionClientProtocol {
    /// Performs the `CreateIdMappingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Creates an IdMappingWorkflow object which stores the configuration of the data processing job to be run. Each IdMappingWorkflow must have a unique workflow name. To modify an existing workflow, use the UpdateIdMappingWorkflow API.
    ///
    /// - Parameter CreateIdMappingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `CreateIdMappingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `ExceedsLimitException` : The request was rejected because it attempted to create resources beyond the current Entity Resolution account limits. The error message describes the limit exceeded. HTTP Status Code: 402
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func createIdMappingWorkflow(input: CreateIdMappingWorkflowInput) async throws -> CreateIdMappingWorkflowOutput
    /// Performs the `CreateMatchingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Creates a MatchingWorkflow object which stores the configuration of the data processing job to be run. It is important to note that there should not be a pre-existing MatchingWorkflow with the same name. To modify an existing workflow, utilize the UpdateMatchingWorkflow API.
    ///
    /// - Parameter CreateMatchingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `CreateMatchingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `ExceedsLimitException` : The request was rejected because it attempted to create resources beyond the current Entity Resolution account limits. The error message describes the limit exceeded. HTTP Status Code: 402
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func createMatchingWorkflow(input: CreateMatchingWorkflowInput) async throws -> CreateMatchingWorkflowOutput
    /// Performs the `CreateSchemaMapping` operation on the `AWSVeniceService` service.
    ///
    /// Creates a schema mapping, which defines the schema of the input customer records table. The SchemaMapping also provides Entity Resolution with some metadata about the table, such as the attribute types of the columns and which columns to match on.
    ///
    /// - Parameter CreateSchemaMappingInput : [no documentation found]
    ///
    /// - Returns: `CreateSchemaMappingOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `ExceedsLimitException` : The request was rejected because it attempted to create resources beyond the current Entity Resolution account limits. The error message describes the limit exceeded. HTTP Status Code: 402
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func createSchemaMapping(input: CreateSchemaMappingInput) async throws -> CreateSchemaMappingOutput
    /// Performs the `DeleteIdMappingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Deletes the IdMappingWorkflow with a given name. This operation will succeed even if a workflow with the given name does not exist.
    ///
    /// - Parameter DeleteIdMappingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `DeleteIdMappingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func deleteIdMappingWorkflow(input: DeleteIdMappingWorkflowInput) async throws -> DeleteIdMappingWorkflowOutput
    /// Performs the `DeleteMatchingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Deletes the MatchingWorkflow with a given name. This operation will succeed even if a workflow with the given name does not exist.
    ///
    /// - Parameter DeleteMatchingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `DeleteMatchingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func deleteMatchingWorkflow(input: DeleteMatchingWorkflowInput) async throws -> DeleteMatchingWorkflowOutput
    /// Performs the `DeleteSchemaMapping` operation on the `AWSVeniceService` service.
    ///
    /// Deletes the SchemaMapping with a given name. This operation will succeed even if a schema with the given name does not exist. This operation will fail if there is a MatchingWorkflow object that references the SchemaMapping in the workflow's InputSourceConfig.
    ///
    /// - Parameter DeleteSchemaMappingInput : [no documentation found]
    ///
    /// - Returns: `DeleteSchemaMappingOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func deleteSchemaMapping(input: DeleteSchemaMappingInput) async throws -> DeleteSchemaMappingOutput
    /// Performs the `GetIdMappingJob` operation on the `AWSVeniceService` service.
    ///
    /// Gets the status, metrics, and errors (if there are any) that are associated with a job.
    ///
    /// - Parameter GetIdMappingJobInput : [no documentation found]
    ///
    /// - Returns: `GetIdMappingJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getIdMappingJob(input: GetIdMappingJobInput) async throws -> GetIdMappingJobOutput
    /// Performs the `GetIdMappingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Returns the IdMappingWorkflow with a given name, if it exists.
    ///
    /// - Parameter GetIdMappingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `GetIdMappingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getIdMappingWorkflow(input: GetIdMappingWorkflowInput) async throws -> GetIdMappingWorkflowOutput
    /// Performs the `GetMatchId` operation on the `AWSVeniceService` service.
    ///
    /// Returns the corresponding Match ID of a customer record if the record has been processed.
    ///
    /// - Parameter GetMatchIdInput : [no documentation found]
    ///
    /// - Returns: `GetMatchIdOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getMatchId(input: GetMatchIdInput) async throws -> GetMatchIdOutput
    /// Performs the `GetMatchingJob` operation on the `AWSVeniceService` service.
    ///
    /// Gets the status, metrics, and errors (if there are any) that are associated with a job.
    ///
    /// - Parameter GetMatchingJobInput : [no documentation found]
    ///
    /// - Returns: `GetMatchingJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getMatchingJob(input: GetMatchingJobInput) async throws -> GetMatchingJobOutput
    /// Performs the `GetMatchingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Returns the MatchingWorkflow with a given name, if it exists.
    ///
    /// - Parameter GetMatchingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `GetMatchingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getMatchingWorkflow(input: GetMatchingWorkflowInput) async throws -> GetMatchingWorkflowOutput
    /// Performs the `GetProviderService` operation on the `AWSVeniceService` service.
    ///
    /// Returns the ProviderService of a given name.
    ///
    /// - Parameter GetProviderServiceInput : [no documentation found]
    ///
    /// - Returns: `GetProviderServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getProviderService(input: GetProviderServiceInput) async throws -> GetProviderServiceOutput
    /// Performs the `GetSchemaMapping` operation on the `AWSVeniceService` service.
    ///
    /// Returns the SchemaMapping of a given name.
    ///
    /// - Parameter GetSchemaMappingInput : [no documentation found]
    ///
    /// - Returns: `GetSchemaMappingOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func getSchemaMapping(input: GetSchemaMappingInput) async throws -> GetSchemaMappingOutput
    /// Performs the `ListIdMappingJobs` operation on the `AWSVeniceService` service.
    ///
    /// Lists all ID mapping jobs for a given workflow.
    ///
    /// - Parameter ListIdMappingJobsInput : [no documentation found]
    ///
    /// - Returns: `ListIdMappingJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listIdMappingJobs(input: ListIdMappingJobsInput) async throws -> ListIdMappingJobsOutput
    /// Performs the `ListIdMappingWorkflows` operation on the `AWSVeniceService` service.
    ///
    /// Returns a list of all the IdMappingWorkflows that have been created for an Amazon Web Services account.
    ///
    /// - Parameter ListIdMappingWorkflowsInput : [no documentation found]
    ///
    /// - Returns: `ListIdMappingWorkflowsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listIdMappingWorkflows(input: ListIdMappingWorkflowsInput) async throws -> ListIdMappingWorkflowsOutput
    /// Performs the `ListMatchingJobs` operation on the `AWSVeniceService` service.
    ///
    /// Lists all jobs for a given workflow.
    ///
    /// - Parameter ListMatchingJobsInput : [no documentation found]
    ///
    /// - Returns: `ListMatchingJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listMatchingJobs(input: ListMatchingJobsInput) async throws -> ListMatchingJobsOutput
    /// Performs the `ListMatchingWorkflows` operation on the `AWSVeniceService` service.
    ///
    /// Returns a list of all the MatchingWorkflows that have been created for an Amazon Web Services account.
    ///
    /// - Parameter ListMatchingWorkflowsInput : [no documentation found]
    ///
    /// - Returns: `ListMatchingWorkflowsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listMatchingWorkflows(input: ListMatchingWorkflowsInput) async throws -> ListMatchingWorkflowsOutput
    /// Performs the `ListProviderServices` operation on the `AWSVeniceService` service.
    ///
    /// Returns a list of all the ProviderServices that are available in this Amazon Web Services Region.
    ///
    /// - Parameter ListProviderServicesInput : [no documentation found]
    ///
    /// - Returns: `ListProviderServicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listProviderServices(input: ListProviderServicesInput) async throws -> ListProviderServicesOutput
    /// Performs the `ListSchemaMappings` operation on the `AWSVeniceService` service.
    ///
    /// Returns a list of all the SchemaMappings that have been created for an Amazon Web Services account.
    ///
    /// - Parameter ListSchemaMappingsInput : [no documentation found]
    ///
    /// - Returns: `ListSchemaMappingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listSchemaMappings(input: ListSchemaMappingsInput) async throws -> ListSchemaMappingsOutput
    /// Performs the `ListTagsForResource` operation on the `AWSVeniceService` service.
    ///
    /// Displays the tags associated with an Entity Resolution resource. In Entity Resolution, SchemaMapping, and MatchingWorkflow can be tagged.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `StartIdMappingJob` operation on the `AWSVeniceService` service.
    ///
    /// Starts the IdMappingJob of a workflow. The workflow must have previously been created using the CreateIdMappingWorkflow endpoint.
    ///
    /// - Parameter StartIdMappingJobInput : [no documentation found]
    ///
    /// - Returns: `StartIdMappingJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `ExceedsLimitException` : The request was rejected because it attempted to create resources beyond the current Entity Resolution account limits. The error message describes the limit exceeded. HTTP Status Code: 402
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func startIdMappingJob(input: StartIdMappingJobInput) async throws -> StartIdMappingJobOutput
    /// Performs the `StartMatchingJob` operation on the `AWSVeniceService` service.
    ///
    /// Starts the MatchingJob of a workflow. The workflow must have previously been created using the CreateMatchingWorkflow endpoint.
    ///
    /// - Parameter StartMatchingJobInput : [no documentation found]
    ///
    /// - Returns: `StartMatchingJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `ExceedsLimitException` : The request was rejected because it attempted to create resources beyond the current Entity Resolution account limits. The error message describes the limit exceeded. HTTP Status Code: 402
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func startMatchingJob(input: StartMatchingJobInput) async throws -> StartMatchingJobOutput
    /// Performs the `TagResource` operation on the `AWSVeniceService` service.
    ///
    /// Assigns one or more tags (key-value pairs) to the specified Entity Resolution resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Entity Resolution, SchemaMapping and MatchingWorkflow can be tagged. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AWSVeniceService` service.
    ///
    /// Removes one or more tags from the specified Entity Resolution resource. In Entity Resolution, SchemaMapping, and MatchingWorkflow can be tagged.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateIdMappingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Updates an existing IdMappingWorkflow. This method is identical to CreateIdMappingWorkflow, except it uses an HTTP PUT request instead of a POST request, and the IdMappingWorkflow must already exist for the method to succeed.
    ///
    /// - Parameter UpdateIdMappingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `UpdateIdMappingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func updateIdMappingWorkflow(input: UpdateIdMappingWorkflowInput) async throws -> UpdateIdMappingWorkflowOutput
    /// Performs the `UpdateMatchingWorkflow` operation on the `AWSVeniceService` service.
    ///
    /// Updates an existing MatchingWorkflow. This method is identical to CreateMatchingWorkflow, except it uses an HTTP PUT request instead of a POST request, and the MatchingWorkflow must already exist for the method to succeed.
    ///
    /// - Parameter UpdateMatchingWorkflowInput : [no documentation found]
    ///
    /// - Returns: `UpdateMatchingWorkflowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func updateMatchingWorkflow(input: UpdateMatchingWorkflowInput) async throws -> UpdateMatchingWorkflowOutput
    /// Performs the `UpdateSchemaMapping` operation on the `AWSVeniceService` service.
    ///
    /// Updates a schema mapping. A schema is immutable if it is being used by a workflow. Therefore, you can't update a schema mapping if it's associated with a workflow.
    ///
    /// - Parameter UpdateSchemaMappingInput : [no documentation found]
    ///
    /// - Returns: `UpdateSchemaMappingOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action. HTTP Status Code: 403
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. HTTP Status Code: 400
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Entity Resolution service. HTTP Status Code: 500
    /// - `ResourceNotFoundException` : The resource could not be found. HTTP Status Code: 404
    /// - `ThrottlingException` : The request was denied due to request throttling. HTTP Status Code: 429
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Entity Resolution. HTTP Status Code: 400
    func updateSchemaMapping(input: UpdateSchemaMappingInput) async throws -> UpdateSchemaMappingOutput
}

public enum EntityResolutionClientTypes {}
