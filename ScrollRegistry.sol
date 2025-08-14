function commitAudit(bytes32 hash, string calldata anchor) external {
    require(msg.sender == validatorGuild, "Unauthorized");
    auditLedger[hash] = anchor;
    emit AuditCommitted(hash, anchor);
}
