@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'KAIROS - Organizations'
define root view entity ZI_KAIROS_ORG 
as select from zkairos_org as Kairos_Organization 
{
    key org as Organization,
    name,
    description,
    address,
    @Semantics.user.createdBy: true
    created_by,
    @Semantics.systemDateTime.createdAt: true
    created_at

}
