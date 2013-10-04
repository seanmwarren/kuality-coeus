class InstitutionalProposalObject

  include Foundry
  include DataFactory
  include StringFactory
  include DateFactory
  include Navigation

  attr_accessor :document_id, :proposal_number, :dev_proposal_number, :project_title, :doc_status, :sponsor_id, :activity_type,
                :proposal_type, :proposal_status, :project_personnel, :custom_data, :special_review, :award_id,
                :initiator, :proposal_log

  def initialize(browser, opts={})
    @browser = browser
    set_options(opts)
  end

  # This method is appropriate only in the context of creating an
  # Institutional Proposal from a Proposal Log.
  def create

  end

end