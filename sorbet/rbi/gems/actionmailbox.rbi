# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actionmailbox/all/actionmailbox.rbi
#
# actionmailbox-6.1.1

module Mail
  def self.from_source(source); end
end
class Mail::Message
  def bcc_addresses; end
  def cc_addresses; end
  def from_address; end
  def recipients; end
  def recipients_addresses; end
  def to_addresses; end
  def x_original_to_addresses; end
end
class Mail::Address
  def ==(other_address); end
  def self.wrap(address); end
end
module ActionMailbox
  def incinerate; end
  def incinerate=(val); end
  def incinerate_after; end
  def incinerate_after=(val); end
  def ingress; end
  def ingress=(val); end
  def logger; end
  def logger=(val); end
  def queues; end
  def queues=(val); end
  def self.incinerate; end
  def self.incinerate=(val); end
  def self.incinerate_after; end
  def self.incinerate_after=(val); end
  def self.ingress; end
  def self.ingress=(val); end
  def self.logger; end
  def self.logger=(val); end
  def self.queues; end
  def self.queues=(val); end
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
  extend ActiveSupport::Autoload
end
class ActionMailbox::Engine < Rails::Engine
end
module Anonymous_Module_29
end
module Anonymous_Module_30
end
class ActionMailbox::BaseController < ActionController::Base
  def _layout(lookup_context, formats); end
  def authenticate_by_password; end
  def ensure_configured; end
  def ingress_name; end
  def password; end
  def self.__callbacks; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_31
end
module Anonymous_Module_31
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_29
  extend Anonymous_Module_30
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_29
  include Anonymous_Module_30
end
class ActionMailbox::IncinerationJob < ActiveJob::Base
  def perform(inbound_email); end
  def self.queue_name; end
  def self.rescue_handlers; end
  def self.schedule(inbound_email); end
end
class ActionMailbox::RoutingJob < ActiveJob::Base
  def perform(inbound_email); end
  def self.queue_name; end
end
module ActionMailbox::Record::GeneratedAttributeMethods
end
class ActionMailbox::Record < ActiveRecord::Base
  include ActionMailbox::Record::GeneratedAssociationMethods
  include ActionMailbox::Record::GeneratedAttributeMethods
end
module ActionMailbox::Record::GeneratedAssociationMethods
end
class ActionMailbox::Record::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActionMailbox::Record::GeneratedRelationMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
end
module ActionMailbox::Record::GeneratedRelationMethods
end
class ActionMailbox::Record::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActionMailbox::Record::GeneratedRelationMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
end
class ActionMailbox::Record::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActionMailbox::Record::GeneratedRelationMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
end
module ActionMailbox::InboundEmail::Incineratable
  def incinerate; end
  def incinerate_later; end
  extend ActiveSupport::Concern
end
module ActionMailbox::InboundEmail::MessageId
  extend ActiveSupport::Concern
end
module ActionMailbox::InboundEmail::MessageId::ClassMethods
  def create_and_extract_message_id!(source, **options); end
  def extract_message_id(source); end
  def generate_missing_message_id(message_checksum); end
end
module ActionMailbox::InboundEmail::Routable
  def route; end
  def route_later; end
  extend ActiveSupport::Concern
end
module ActionMailbox::InboundEmail::GeneratedAttributeMethods
end
class ActionMailbox::InboundEmail < ActionMailbox::Record
  def autosave_associated_records_for_raw_email_attachment; end
  def autosave_associated_records_for_raw_email_blob; end
  def mail; end
  def processed?; end
  def source; end
  extend ActionMailbox::InboundEmail::MessageId::ClassMethods
  include ActionMailbox::InboundEmail::GeneratedAssociationMethods
  include ActionMailbox::InboundEmail::GeneratedAttributeMethods
  include ActionMailbox::InboundEmail::Incineratable
  include Anonymous_ActiveRecord_Enum_EnumMethods_32
end
module ActionMailbox::InboundEmail::GeneratedAssociationMethods
  def build_raw_email_attachment(*args, &block); end
  def create_raw_email_attachment!(*args, &block); end
  def create_raw_email_attachment(*args, &block); end
  def raw_email; end
  def raw_email=(attachable); end
  def raw_email_attachment; end
  def raw_email_attachment=(value); end
  def raw_email_blob; end
  def raw_email_blob=(value); end
  def reload_raw_email_attachment; end
  def reload_raw_email_blob; end
end
class ActionMailbox::InboundEmail::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActionMailbox::InboundEmail::GeneratedRelationMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
end
module ActionMailbox::InboundEmail::GeneratedRelationMethods
  def bounced(**, &&); end
  def delivered(**, &&); end
  def failed(**, &&); end
  def not_bounced(**, &&); end
  def not_delivered(**, &&); end
  def not_failed(**, &&); end
  def not_pending(**, &&); end
  def not_processing(**, &&); end
  def pending(**, &&); end
  def processing(**, &&); end
  def with_attached_raw_email(**, &&); end
end
class ActionMailbox::InboundEmail::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActionMailbox::InboundEmail::GeneratedRelationMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
end
class ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActionMailbox::InboundEmail::GeneratedRelationMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
end
module Anonymous_ActiveRecord_Enum_EnumMethods_32
  def bounced!; end
  def bounced?; end
  def delivered!; end
  def delivered?; end
  def failed!; end
  def failed?; end
  def pending!; end
  def pending?; end
  def processing!; end
  def processing?; end
end
module Rails
end
class Rails::Conductor::BaseController < ActionController::Base
  def _layout(lookup_context, formats); end
  def ensure_development_env; end
  def self.__callbacks; end
  def self._layout; end
  def self._layout_conditions; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_21
end
module Rails::Conductor::BaseController::HelperMethods
  include ActionController::Base::HelperMethods
  include ApplicationHelper
end
class ActionMailbox::Ingresses::Postmark::InboundEmailsController < ActionMailbox::BaseController
  def _layout(lookup_context, formats); end
  def create; end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_31
end
class ActionMailbox::Ingresses::Sendgrid::InboundEmailsController < ActionMailbox::BaseController
  def _layout(lookup_context, formats); end
  def create; end
  def envelope; end
  def mail; end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_31
end
class ActionMailbox::Ingresses::Mandrill::InboundEmailsController < ActionMailbox::BaseController
  def _layout(lookup_context, formats); end
  def authenticate; end
  def authenticated?; end
  def create; end
  def events; end
  def health_check; end
  def key; end
  def raw_emails; end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_31
end
class ActionMailbox::Ingresses::Mandrill::InboundEmailsController::Authenticator
  def authenticated?; end
  def expected_signature; end
  def given_signature; end
  def initialize(request, key); end
  def key; end
  def message; end
  def request; end
end
class ActionMailbox::Ingresses::Mailgun::InboundEmailsController < ActionMailbox::BaseController
  def _layout(lookup_context, formats); end
  def authenticate; end
  def authenticated?; end
  def create; end
  def key; end
  def mail; end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_31
end
class ActionMailbox::Ingresses::Mailgun::InboundEmailsController::Authenticator
  def authenticated?; end
  def expected_signature; end
  def initialize(key:, timestamp:, token:, signature:); end
  def key; end
  def recent?; end
  def signature; end
  def signed?; end
  def timestamp; end
  def token; end
end
class ActionMailbox::Ingresses::Relay::InboundEmailsController < ActionMailbox::BaseController
  def _layout(lookup_context, formats); end
  def create; end
  def require_valid_rfc822_message; end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_31
end
class Rails::Conductor::ActionMailbox::InboundEmailsController < Rails::Conductor::BaseController
  def _layout(lookup_context, formats); end
  def create; end
  def create_inbound_email(mail); end
  def index; end
  def new; end
  def new_mail; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include Anonymous_Module_21
end
class Rails::Conductor::ActionMailbox::ReroutesController < Rails::Conductor::BaseController
  def _layout(lookup_context, formats); end
  def create; end
  def reroute(inbound_email); end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_21
end
class ActionMailbox::InboundEmail::Incineratable::Incineration
  def due?; end
  def initialize(inbound_email); end
  def processed?; end
  def run; end
end
class Rails::Conductor::ActionMailbox::InboundEmails::SourcesController < Rails::Conductor::BaseController
  def _layout(lookup_context, formats); end
  def create; end
  def new; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_21
end
module ActionMailbox::Callbacks
  extend ActiveSupport::Concern
  include ActiveSupport::Callbacks
end
module ActionMailbox::Callbacks::ClassMethods
  def after_processing(*methods, &block); end
  def around_processing(*methods, &block); end
  def before_processing(*methods, &block); end
end
module ActionMailbox::Routing
  extend ActiveSupport::Concern
end
module ActionMailbox::Routing::ClassMethods
  def mailbox_for(inbound_email); end
  def route(inbound_email); end
  def routing(routes); end
end
class ActionMailbox::Router::Route
  def address; end
  def ensure_valid_address; end
  def initialize(address, to:); end
  def mailbox_class; end
  def mailbox_name; end
  def match?(inbound_email); end
end
class ActionMailbox::Router
  def add_route(address, to:); end
  def add_routes(routes); end
  def initialize; end
  def mailbox_for(inbound_email); end
  def route(inbound_email); end
  def routes; end
end
class ActionMailbox::Router::RoutingError < StandardError
end
class ActionMailbox::Base
  def __callbacks; end
  def __callbacks?; end
  def _process_callbacks; end
  def _run_process_callbacks(&block); end
  def bounce_with(message); end
  def bounced!(**, &&); end
  def delivered!(**, &&); end
  def finished_processing?; end
  def inbound_email; end
  def initialize(inbound_email); end
  def logger(**, &&); end
  def mail(**, &&); end
  def perform_processing; end
  def process; end
  def rescue_handlers; end
  def rescue_handlers=(arg0); end
  def rescue_handlers?; end
  def router; end
  def router=(val); end
  def self.__callbacks; end
  def self.__callbacks=(value); end
  def self.__callbacks?; end
  def self._process_callbacks; end
  def self._process_callbacks=(value); end
  def self.receive(inbound_email); end
  def self.rescue_handlers; end
  def self.rescue_handlers=(value); end
  def self.rescue_handlers?; end
  def self.router; end
  def self.router=(val); end
  def track_status_of_inbound_email; end
  extend ActionMailbox::Callbacks::ClassMethods
  extend ActionMailbox::Routing::ClassMethods
  extend ActiveSupport::Callbacks::ClassMethods
  extend ActiveSupport::DescendantsTracker
  extend ActiveSupport::Rescuable::ClassMethods
  include ActionMailbox::Callbacks
  include ActiveSupport::Callbacks
  include ActiveSupport::Rescuable
end
module ActionMailbox::TestHelper
  def create_inbound_email_from_fixture(fixture_name, status: nil); end
  def create_inbound_email_from_mail(status: nil, **mail_options, &block); end
  def create_inbound_email_from_source(source, status: nil); end
  def receive_inbound_email_from_fixture(*args); end
  def receive_inbound_email_from_mail(**kwargs, &block); end
  def receive_inbound_email_from_source(*args); end
end
class ActionMailbox::TestCase < ActiveSupport::TestCase
  include ActionMailbox::TestHelper
end
