<?xml version="1.0" encoding="ISO-8859-1"?>
<CreditNote xmlns="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"
            xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
            xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
            xmlns:ccts="urn:un:unece:uncefact:documentation:2"
            xmlns:cec="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"
            xmlns:ds="http://www.w3.org/2000/09/xmldsig#"
            xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"
            xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2"
            xmlns:sac="urn:sunat:names:specification:ubl:peru:schema:xsd:SunatAggregateComponents-1"
            xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2"
            xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ext:UBLExtensions>
    </ext:UBLExtensions>
    <cbc:UBLVersionID>2.1</cbc:UBLVersionID>
    <cbc:CustomizationID>2.0</cbc:CustomizationID>
    <cbc:ID>${serieNumero}</cbc:ID>
    <cbc:IssueDate>${fechaEmision}</cbc:IssueDate>
    <#if horaEmision??><cbc:IssueTime>${horaEmision}</cbc:IssueTime></#if>
    <cbc:DocumentCurrencyCode listID="ISO 4217 Alpha"
                              listName="Currency"
                              listAgencyName="United Nations Economic Commission for Europe">${moneda}</cbc:DocumentCurrencyCode>
    <#if detalleSize??><cbc:LineCountNumeric>${detalleSize}</cbc:LineCountNumeric></#if>
    <cac:DiscrepancyResponse>
        <cbc:ReferenceID>${serieNumeroInvoiceReference}</cbc:ReferenceID>
        <cbc:ResponseCode listAgencyName="PE:SUNAT"
                          listName="SUNAT: Identificador de tipo de nota de credito"
                          listURI="urn:pe:gob:sunat:cpe:see:gem:catalogos:catalogo09">${tipoNota.code}</cbc:ResponseCode>
        <cbc:Description><![CDATA[${descripcionSustentoInvoiceReference}]]</cbc:Description>
    </cac:DiscrepancyResponse>
    <cac:BillingReference>
        <cac:InvoiceDocumentReference>
            <cbc:ID>${serieNumeroInvoiceReference}</cbc:ID>
            <cbc:DocumentTypeCode listAgencyName="PE:SUNAT" listName="SUNAT:Identificador de Tipo de Documento"
                                  listURI="urn:pe:gob:sunat:cpe:see:gem:catalogos:catalogo01">${tipoComprobanteInvoiceReference.code}</cbc:DocumentTypeCode>
        </cac:InvoiceDocumentReference>
    </cac:BillingReference>
    <cac:Signature>
        <#if firmante??>
            <cbc:ID>${firmante.ruc}</cbc:ID>
            <cac:SignatoryParty>
                <cac:PartyIdentification>
                    <cbc:ID>${firmante.ruc}</cbc:ID>
                </cac:PartyIdentification>
                <cac:PartyName>
                    <cbc:Name><![CDATA[${firmante.razonSocial}]]></cbc:Name>
                </cac:PartyName>
            </cac:SignatoryParty>
            <cac:DigitalSignatureAttachment>
                <cac:ExternalReference>
                    <cbc:URI>#SIGN-ID</cbc:URI>
                </cac:ExternalReference>
            </cac:DigitalSignatureAttachment>
        </#if>
    </cac:Signature>
    <cac:AccountingSupplierParty>
        <cac:Party>
            <cac:PartyIdentification>
                <cbc:ID schemeID="6"
                        schemeAgencyName="PE:SUNAT"
                        schemeName="SUNAT:Identificador de Documento de Identidad"
                        schemeURI="urn:pe:gob:sunat:cpe:see:gem:catalogos:catalogo06">${proveedor.ruc}</cbc:ID>
            </cac:PartyIdentification>
            <#if proveedor.nombreComercial??>
                <cac:PartyName>
                    <cbc:Name>${proveedor.nombreComercial}</cbc:Name>
                </cac:PartyName>
            </#if>
            <cac:PartyLegalEntity>
                <cbc:RegistrationName><![CDATA[${proveedor.razonSocial}]]></cbc:RegistrationName>
                <cac:RegistrationAddress>
                    <cbc:AddressTypeCode>${proveedor.codigoPostal}</cbc:AddressTypeCode>
                </cac:RegistrationAddress>
            </cac:PartyLegalEntity>
        </cac:Party>
    </cac:AccountingSupplierParty>
    <cac:AccountingCustomerParty>
        <cac:Party>
            <cac:PartyIdentification>
                <cbc:ID schemeID="${cliente.tipoDocumentoIdentidad.code}"
                        schemeAgencyName="PE:SUNAT"
                        schemeName="SUNAT:Identificador de Documento de Identidad"
                        schemeURI="urn:pe:gob:sunat:cpe:see:gem:catalogos:catalogo06">${cliente.numeroDocumentoIdentidad}</cbc:ID>
            </cac:PartyIdentification>
            <cac:PartyLegalEntity>
                <cbc:RegistrationName><![CDATA[${cliente.nombre}]]></cbc:RegistrationName>
            </cac:PartyLegalEntity>
        </cac:Party>
    </cac:AccountingCustomerParty>
<#--    <cac:TaxTotal>-->
<#--        <cbc:TaxAmount currencyID="PEN">469442.40</cbc:TaxAmount>-->
<#--        <cac:TaxSubtotal>-->
<#--            <cbc:TaxableAmount currencyID="PEN">2608013.33</cbc:TaxableAmount>-->
<#--            <cbc:TaxAmount currencyID="PEN">469442.40</cbc:TaxAmount>-->
<#--            <cac:TaxCategory>-->
<#--                <cbc:ID schemeAgencyName="United Nations Economic Commission for Europe" schemeID="UN/ECE 5305"-->
<#--                        schemeName="Tax Category Identifie">S-->
<#--                </cbc:ID>-->
<#--                <cac:TaxScheme>-->
<#--                    <cbc:ID schemeAgencyName="PE:SUNAT" schemeID="UN/ECE 5153" schemeName="Codigo de tributos">1000-->
<#--                    </cbc:ID>-->
<#--                    <cbc:Name>IGV</cbc:Name>-->
<#--                    <cbc:TaxTypeCode>VAT</cbc:TaxTypeCode>-->
<#--                </cac:TaxScheme>-->
<#--            </cac:TaxCategory>-->
<#--        </cac:TaxSubtotal>-->
<#--        <cac:TaxSubtotal>-->
<#--            <cbc:TaxableAmount currencyID="PEN">0.00</cbc:TaxableAmount>-->
<#--            <cbc:TaxAmount currencyID="PEN">0.00</cbc:TaxAmount>-->
<#--            <cac:TaxCategory>-->
<#--                <cbc:ID schemeAgencyName="United Nations Economic Commission for Europe" schemeID="UN/ECE 5305"-->
<#--                        schemeName="Tax Category Identifie">S-->
<#--                </cbc:ID>-->
<#--                <cac:TaxScheme>-->
<#--                    <cbc:ID schemeAgencyName="PE:SUNAT" schemeID="UN/ECE 5153" schemeName="Codigo de tributos">9996-->
<#--                    </cbc:ID>-->
<#--                    <cbc:Name>GRA</cbc:Name>-->
<#--                    <cbc:TaxTypeCode>FRE</cbc:TaxTypeCode>-->
<#--                </cac:TaxScheme>-->
<#--            </cac:TaxCategory>-->
<#--        </cac:TaxSubtotal>-->
<#--    </cac:TaxTotal>-->
<#--    <cac:LegalMonetaryTotal>-->
<#--        <cbc:PayableAmount currencyID="PEN">3077455.73</cbc:PayableAmount>-->
<#--    </cac:LegalMonetaryTotal>-->
<#--    <cac:CreditNoteLine>-->
<#--        <cbc:ID>1</cbc:ID>-->
<#--        <cbc:CreditedQuantity unitCode="NIU" unitCodeListAgencyName="United Nations Economic Commission for Europe"-->
<#--                              unitCodeListID="UN/ECE rec 20">1-->
<#--        </cbc:CreditedQuantity>-->
<#--        <cbc:LineExtensionAmount currencyID="PEN">2608013.33</cbc:LineExtensionAmount>-->
<#--        <cac:PricingReference>-->
<#--            <cac:AlternativeConditionPrice>-->
<#--                <cbc:PriceAmount currencyID="PEN">3077455.73</cbc:PriceAmount>-->
<#--                <cbc:PriceTypeCode listAgencyName="PE:SUNAT" listName="SUNAT:Indicador de Tipo de Precio"-->
<#--                                   listURI="urn:pe:gob:sunat:cpe:see:gem:catalogos:catalogo16">01-->
<#--                </cbc:PriceTypeCode>-->
<#--            </cac:AlternativeConditionPrice>-->
<#--        </cac:PricingReference>-->
<#--        <cac:TaxTotal>-->
<#--            <cbc:TaxAmount currencyID="PEN">469442.40</cbc:TaxAmount>-->
<#--            <cac:TaxSubtotal>-->
<#--                <cbc:TaxableAmount currencyID="PEN">2608013.33</cbc:TaxableAmount>-->
<#--                <cbc:TaxAmount currencyID="PEN">469442.40</cbc:TaxAmount>-->
<#--                <cac:TaxCategory>-->
<#--                    <cbc:ID schemeAgencyName="United Nations Economic Commission for Europe" schemeID="UN/ECE 5305"-->
<#--                            schemeName="Tax Category Identifier">S-->
<#--                    </cbc:ID>-->
<#--                    <cbc:Percent>18.00</cbc:Percent>-->
<#--                    <cbc:TaxExemptionReasonCode listAgencyName="PE:SUNAT"-->
<#--                                                listName="SUNAT:Codigo de Tipo de Afectaci�n del IGV"-->
<#--                                                listURI="urn:pe:gob:sunat:cpe:see:gem:catalogos:catalogo07">10-->
<#--                    </cbc:TaxExemptionReasonCode>-->
<#--                    <cac:TaxScheme>-->
<#--                        <cbc:ID schemeAgencyName="PE:SUNAT" schemeID="UN/ECE 5153" schemeName="Codigo de tributos">-->
<#--                            1000-->
<#--                        </cbc:ID>-->
<#--                        <cbc:Name>IGV</cbc:Name>-->
<#--                        <cbc:TaxTypeCode>VAT</cbc:TaxTypeCode>-->
<#--                    </cac:TaxScheme>-->
<#--                </cac:TaxCategory>-->
<#--            </cac:TaxSubtotal>-->
<#--        </cac:TaxTotal>-->
<#--        <cac:Item>-->
<#--            <cbc:Description>desc-->
<#--            </cbc:Description>-->
<#--        </cac:Item>-->
<#--        <cac:Price>-->
<#--            <cbc:PriceAmount currencyID="PEN">23413.33</cbc:PriceAmount>-->
<#--        </cac:Price>-->
<#--    </cac:CreditNoteLine>-->
</CreditNote>