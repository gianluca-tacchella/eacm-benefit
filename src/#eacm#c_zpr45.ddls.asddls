@EndUserText.label: 'Benefit type'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity /EACM/C_ZPR45
  provider contract transactional_query
  as projection on /EACM/I_ZPR45
{
  key Zcdben,
      Zdsben,
      CreatedBy,
      CreatedAt,
      ChangedBy,
      ChangedAt,
      LocalLastChangedAt
}
