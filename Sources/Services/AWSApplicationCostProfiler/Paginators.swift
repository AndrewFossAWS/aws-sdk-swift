// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ApplicationCostProfilerClient {
    /// Paginate over `[ListReportDefinitionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReportDefinitionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReportDefinitionsOutputResponse`
    public func listReportDefinitionsPaginated(input: ListReportDefinitionsInput) -> ClientRuntime.PaginatorSequence<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse>(input: input, inputKey: \ListReportDefinitionsInput.nextToken, outputKey: \ListReportDefinitionsOutputResponse.nextToken, paginationFunction: self.listReportDefinitions(input:))
    }
}

extension ListReportDefinitionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReportDefinitionsInput {
        return ListReportDefinitionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}