// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Marketplace is a curated digital catalog that customers can use to find, buy, deploy, and manage third-party software, data, and services to build solutions and run their businesses. The AWS Marketplace Agreement Service provides an API interface that helps AWS Marketplace sellers manage their product-related agreements, including listing, searching, and filtering agreements. To manage agreements in AWS Marketplace, you must ensure that your AWS Identity and Access Management (IAM) policies and roles are set up. The user must have the required policies/permissions that allow them to carry out the actions in AWS:
///
/// * DescribeAgreement – Grants permission to users to obtain detailed meta data about any of their agreements.
///
/// * GetAgreementTerms – Grants permission to users to obtain details about the terms of an agreement.
///
/// * SearchAgreements – Grants permission to users to search through all their agreements.
public protocol MarketplaceAgreementClientProtocol {
    /// Performs the `DescribeAgreement` operation on the `AWSMPCommerceService_v20200301` service.
    ///
    /// Provides details about an agreement, such as the proposer, acceptor, start date, and end date.
    ///
    /// - Parameter DescribeAgreementInput : [no documentation found]
    ///
    /// - Returns: `DescribeAgreementOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by the service.
    func describeAgreement(input: DescribeAgreementInput) async throws -> DescribeAgreementOutput
    /// Performs the `GetAgreementTerms` operation on the `AWSMPCommerceService_v20200301` service.
    ///
    /// Obtains details about the terms in an agreement that you participated in as proposer or acceptor. The details include:
    ///
    /// * TermType – The type of term, such as LegalTerm, RenewalTerm, or ConfigurableUpfrontPricingTerm.
    ///
    /// * TermID – The ID of the particular term, which is common between offer and agreement.
    ///
    /// * TermPayload – The key information contained in the term, such as the EULA for LegalTerm or pricing and dimensions for various pricing terms, such as ConfigurableUpfrontPricingTerm or UsageBasedPricingTerm.
    ///
    ///
    ///
    ///
    /// * Configuration – The buyer/acceptor's selection at the time of agreement creation, such as the number of units purchased for a dimension or setting the EnableAutoRenew flag.
    ///
    /// - Parameter GetAgreementTermsInput : [no documentation found]
    ///
    /// - Returns: `GetAgreementTermsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by the service.
    func getAgreementTerms(input: GetAgreementTermsInput) async throws -> GetAgreementTermsOutput
    /// Performs the `SearchAgreements` operation on the `AWSMPCommerceService_v20200301` service.
    ///
    /// Searches across all agreements that a proposer or an acceptor has in AWS Marketplace. The search returns a list of agreements with basic agreement information. The following filter combinations are supported:
    ///
    /// * PartyType as Proposer + AgreementType + ResourceIdentifier
    ///
    /// * PartyType as Proposer + AgreementType + OfferId
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId
    ///
    /// * PartyType as Proposer + AgreementType + Status
    ///
    /// * PartyType as Proposer + AgreementType + ResourceIdentifier + Status
    ///
    /// * PartyType as Proposer + AgreementType + OfferId + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + Status
    ///
    /// * PartyType as Proposer + AgreementType + ResourceType + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceType + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + OfferId
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + OfferId + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceIdentifier
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceIdentifier + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceType
    ///
    /// - Parameter SearchAgreementsInput : [no documentation found]
    ///
    /// - Returns: `SearchAgreementsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by the service.
    func searchAgreements(input: SearchAgreementsInput) async throws -> SearchAgreementsOutput
}

public enum MarketplaceAgreementClientTypes {}
