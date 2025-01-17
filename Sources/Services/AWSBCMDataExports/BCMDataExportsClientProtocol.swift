// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use the Data Exports API to create customized exports from multiple Amazon Web Services cost management and billing datasets, such as cost and usage data and cost optimization recommendations. The Data Exports API provides the following endpoint:
///
/// * https://bcm-data-exports.us-east-1.api.aws
public protocol BCMDataExportsClientProtocol {
    /// Performs the `CreateExport` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Creates a data export and specifies the data query, the delivery preference, and any optional resource tags. A DataQuery consists of both a QueryStatement and TableConfigurations. The QueryStatement is an SQL statement. Data Exports only supports a limited subset of the SQL syntax. For more information on the SQL syntax that is supported, see [Data query](https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html). To view the available tables and columns, see the [Data Exports table dictionary](https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html). The TableConfigurations is a collection of specified TableProperties for the table being queried in the QueryStatement. TableProperties are additional configurations you can provide to change the data and schema of a table. Each table can have different TableProperties. However, tables are not required to have any TableProperties. Each table property has a default value that it assumes if not specified. For more information on table configurations, see [Data query](https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html). To view the table properties available for each table, see the [Data Exports table dictionary](https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html) or use the ListTables API to get a response of all tables and their available properties.
    ///
    /// - Parameter CreateExportInput : [no documentation found]
    ///
    /// - Returns: `CreateExportOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ServiceQuotaExceededException` : You've reached the limit on the number of resources you can create, or exceeded the size of an individual resource.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func createExport(input: CreateExportInput) async throws -> CreateExportOutput
    /// Performs the `DeleteExport` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Deletes an existing data export.
    ///
    /// - Parameter DeleteExportInput : [no documentation found]
    ///
    /// - Returns: `DeleteExportOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func deleteExport(input: DeleteExportInput) async throws -> DeleteExportOutput
    /// Performs the `GetExecution` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Exports data based on the source data update.
    ///
    /// - Parameter GetExecutionInput : [no documentation found]
    ///
    /// - Returns: `GetExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func getExecution(input: GetExecutionInput) async throws -> GetExecutionOutput
    /// Performs the `GetExport` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Views the definition of an existing data export.
    ///
    /// - Parameter GetExportInput : [no documentation found]
    ///
    /// - Returns: `GetExportOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func getExport(input: GetExportInput) async throws -> GetExportOutput
    /// Performs the `GetTable` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Returns the metadata for the specified table and table properties. This includes the list of columns in the table schema, their data types, and column descriptions.
    ///
    /// - Parameter GetTableInput : [no documentation found]
    ///
    /// - Returns: `GetTableOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func getTable(input: GetTableInput) async throws -> GetTableOutput
    /// Performs the `ListExecutions` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Lists the historical executions for the export.
    ///
    /// - Parameter ListExecutionsInput : [no documentation found]
    ///
    /// - Returns: `ListExecutionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listExecutions(input: ListExecutionsInput) async throws -> ListExecutionsOutput
    /// Performs the `ListExports` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Lists all data export definitions.
    ///
    /// - Parameter ListExportsInput : [no documentation found]
    ///
    /// - Returns: `ListExportsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listExports(input: ListExportsInput) async throws -> ListExportsOutput
    /// Performs the `ListTables` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Lists all available tables in data exports.
    ///
    /// - Parameter ListTablesInput : [no documentation found]
    ///
    /// - Returns: `ListTablesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listTables(input: ListTablesInput) async throws -> ListTablesOutput
    /// Performs the `ListTagsForResource` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// List tags associated with an existing data export.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `TagResource` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Adds tags for an existing data export definition.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Deletes tags associated with an existing data export definition.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateExport` operation on the `AWSBillingAndCostManagementDataExports` service.
    ///
    /// Updates an existing data export by overwriting all export parameters. All export parameters must be provided in the UpdateExport request.
    ///
    /// - Parameter UpdateExportInput : [no documentation found]
    ///
    /// - Returns: `UpdateExportOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified Amazon Resource Name (ARN) in the request doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func updateExport(input: UpdateExportInput) async throws -> UpdateExportOutput
}

public enum BCMDataExportsClientTypes {}
