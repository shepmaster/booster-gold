# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/webpacker/all/webpacker.rbi
#
# webpacker-5.2.1

class Webpacker::Instance
  def commands; end
  def compiler; end
  def config; end
  def config_path; end
  def dev_server; end
  def env; end
  def initialize(root_path: nil, config_path: nil); end
  def logger; end
  def logger=(val); end
  def manifest; end
  def root_path; end
  def self.logger; end
  def self.logger=(val); end
end
class Webpacker::Env
  def available_environments; end
  def config_path(**, &&); end
  def current; end
  def fallback_env_warning; end
  def initialize(webpacker); end
  def inquire; end
  def logger(**, &&); end
  def self.inquire(webpacker); end
end
class Webpacker::Configuration
  def additional_paths; end
  def additional_paths_globbed; end
  def cache_manifest?; end
  def cache_path; end
  def check_yarn_integrity=(value); end
  def compile?; end
  def config_path; end
  def data; end
  def defaults; end
  def dev_server; end
  def env; end
  def extensions; end
  def extract_css?; end
  def fetch(key); end
  def globbed_path_with_extensions(path); end
  def initialize(root_path:, config_path:, env:); end
  def load; end
  def public_manifest_path; end
  def public_output_path; end
  def public_path; end
  def resolved_paths; end
  def root_path; end
  def source_entry_path; end
  def source_path; end
  def source_path_globbed; end
  def webpack_compile_output?; end
end
class Webpacker::Manifest
  def compile; end
  def compiler(**, &&); end
  def compiling?; end
  def config(**, &&); end
  def data; end
  def dev_server(**, &&); end
  def find(name); end
  def full_pack_name(name, pack_type); end
  def handle_missing_entry(name, pack_type); end
  def initialize(webpacker); end
  def load; end
  def lookup!(name, pack_type = nil); end
  def lookup(name, pack_type = nil); end
  def lookup_pack_with_chunks!(name, pack_type = nil); end
  def lookup_pack_with_chunks(name, pack_type = nil); end
  def manifest_name(name, pack_type); end
  def manifest_type(pack_type); end
  def missing_file_from_manifest_error(bundle_name); end
  def refresh; end
end
class Webpacker::Manifest::MissingEntryError < StandardError
end
class Webpacker::Compiler
  def compilation_digest_path; end
  def compile; end
  def config(**, &&); end
  def default_watched_paths; end
  def env; end
  def env=(val); end
  def fresh?; end
  def initialize(webpacker); end
  def last_compilation_digest; end
  def logger(**, &&); end
  def record_compilation_digest; end
  def run_webpack; end
  def self.env; end
  def self.env=(val); end
  def self.watched_paths; end
  def self.watched_paths=(val); end
  def stale?; end
  def watched_files_digest; end
  def watched_paths; end
  def watched_paths=(val); end
  def webpack_env; end
  def webpacker; end
end
class Webpacker::Commands
  def bootstrap; end
  def clean(count = nil, age = nil); end
  def clobber; end
  def compile; end
  def compiler(**, &&); end
  def config(**, &&); end
  def current_version; end
  def initialize(webpacker); end
  def logger(**, &&); end
  def manifest(**, &&); end
  def versions; end
end
class Webpacker::DevServer
  def config; end
  def connect_timeout; end
  def connect_timeout=(val); end
  def defaults; end
  def env_prefix; end
  def fetch(key); end
  def host; end
  def host_with_port; end
  def https?; end
  def initialize(config); end
  def port; end
  def pretty?; end
  def protocol; end
  def running?; end
  def self.connect_timeout; end
  def self.connect_timeout=(val); end
end
module Webpacker::Helper
  def asset_pack_path(name, **options); end
  def asset_pack_url(name, **options); end
  def current_webpacker_instance; end
  def favicon_pack_tag(name, **options); end
  def image_pack_tag(name, **options); end
  def javascript_pack_tag(*names, **options); end
  def javascript_packs_with_chunks_tag(*names, **options); end
  def preload_pack_asset(name, **options); end
  def resolve_path_to_image(name); end
  def sources_from_manifest_entries(names, type:); end
  def sources_from_manifest_entrypoints(names, type:); end
  def stylesheet?(name); end
  def stylesheet_pack_tag(*names, **options); end
  def stylesheet_packs_with_chunks_tag(*names, **options); end
end
class Webpacker::DevServerProxy < Rack::Proxy
  def config(**, &&); end
  def dev_server(**, &&); end
  def initialize(app = nil, opts = nil); end
  def perform_request(env); end
  def public_output_uri_path; end
end
class Webpacker::Engine < Rails::Engine
end
module Webpacker
  def bootstrap(**, &&); end
  def clean(**, &&); end
  def clobber(**, &&); end
  def commands(**, &&); end
  def compile(**, &&); end
  def compiler(**, &&); end
  def config(**, &&); end
  def dev_server(**, &&); end
  def ensure_log_goes_to_stdout; end
  def env(**, &&); end
  def instance; end
  def instance=(instance); end
  def logger(**, &&); end
  def logger=(arg); end
  def manifest(**, &&); end
  def with_node_env(env); end
  extend Webpacker
end
