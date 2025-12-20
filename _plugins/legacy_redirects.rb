# frozen_string_literal: true
# Generates legacy redirect pages:
# /category/<slug>/ -> /venues/<slug>/ and /tags/<slug>/ -> /acts/<slug>/

module LegacyRedirects
  class RedirectPage < Jekyll::Page
    def initialize(site, dir, dest)
      @site = site
      @base = site.source
      @dir  = dir
      @name = 'index.html'
      self.process(@name)
      self.data = {
        "layout" => nil,
        "sitemap" => false,
        "permalink" => "/" + dir + "/",
        "redirect_to" => dest,
      }
      self.content = <<~HTML
        <!doctype html><meta charset="utf-8">
        <meta http-equiv="refresh" content="0; url=#{dest}">
        <link rel="canonical" href="#{dest}">
        <title>Moved Permanently</title>
        <p>Moved to <a href="#{dest}">#{dest}</a>.</p>
        <script>location.replace("#{dest}");</script>
      HTML
    end
  end

  class Generator < Jekyll::Generator
    safe true
    priority :low
    def generate(site)
      # roots
      site.pages << RedirectPage.new(site, "category", "/venues/")
      site.pages << RedirectPage.new(site, "tags", "/acts/")
      # per-venue and per-act
      (site.config["categories"] || site.categories).each_key do |slug|
        site.pages << RedirectPage.new(site, "category/#{slug}", "/venues/#{slug}/")
      end
      (site.config["tags"] || site.tags).each_key do |slug|
        site.pages << RedirectPage.new(site, "tags/#{slug}", "/acts/#{slug}/")
      end
    end
  end
end

