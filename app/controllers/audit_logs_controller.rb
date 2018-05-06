class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.all
    authorized @audit_logs
  end


end
