require 'rubygems'
require 'bundler'
Bundler.require(:default)

Octokit.auto_paginate = true

require_relative 'github_client'
require_relative 'team_api'
