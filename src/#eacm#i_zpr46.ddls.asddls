@EndUserText.label: 'Benefit accounts'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity /EACM/I_ZPR46
  as select from /eacm/zpr46
//  association [0..1] to /EACM/I_Zpr02 as _AgentType
 //   on /eacm/zpr46.ztpag = _AgentType.Ztpag
{
  key bukrs                 as Bukrs,
//@ObjectModel.foreignKey.association: '_AgentType'
  key ztpag                 as Ztpag,
  key waers                 as Waers,
  key zcdben                as Zcdben,
      zcdebb                as Zcdebb,
      zccosb                as Zccosb,
//      _AgentType,
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
