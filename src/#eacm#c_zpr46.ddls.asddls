@EndUserText.label: 'Benefit accounts'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity /EACM/C_ZPR46
  provider contract transactional_query
  as projection on /EACM/I_ZPR46
{
  key Bukrs,
  key Ztpag,
  key Waers,
  key Zcdben,
      Zcdebb,
      Zccosb,
      CreatedBy,
      CreatedAt,
      ChangedBy,
      ChangedAt,
      LocalLastChangedAt
}
