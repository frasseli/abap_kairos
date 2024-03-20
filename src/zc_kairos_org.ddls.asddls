@EndUserText.label: 'KAIROS - Organizations'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI: {
 headerInfo: { typeName: 'KAIROS - Organization', typeNamePlural: 'Organizations', title: { type: #STANDARD, value: 'Organization' } } }

@Search.searchable: true

define root view entity ZC_KAIROS_ORG
  provider contract transactional_query
  as projection on ZI_KAIROS_ORG
{
      @UI.facet: [ { id:              'Organization',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'Organization',
                     position:        10 } ]

      @UI: {
          lineItem:       [ { position: 10, importance: #HIGH } ],
          identification: [ { position: 10, label: 'Organization ID [1,...,9999]' } ] }
      @Search.defaultSearchElement: true
  key Organization,

      @UI: {
          lineItem:       [ { position: 20, importance: #HIGH } ],
          identification: [ { position: 20 } ],
          selectionField: [ { position: 20 } ] }
      name,

      @UI: {
          lineItem:       [ { position: 30, importance: #HIGH } ],
          identification: [ { position: 30 } ],
          selectionField: [ { position: 30 } ] }
      description,

      @UI: {
         lineItem:       [ { position: 40, importance: #HIGH } ],
         identification: [ { position: 40 } ],
         selectionField: [ { position: 40 } ] }
      /*@Consumption.valueHelpDefinition: [{entity: {name: 'I_Address', element: 'AddressID' }}]*/
      address

}
