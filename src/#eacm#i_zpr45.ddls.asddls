@EndUserText.label: 'Benefit type'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
define root view entity /EACM/I_ZPR45
  as select from /eacm/zpr45
{
      @ObjectModel.text.element: ['Zdsben']
@Search.defaultSearchElement: true
  key zcdben                as Zcdben,
      @Semantics.text: true
      zdsben                as Zdsben,

      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      changed_by            as ChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt
}
