helpers do
  def svg_tag(svg, opts = {})
    content_tag :svg, opts do
      tag :use, 'xlink:href' => "##{svg}"
    end
  end

  def inline_svg(path)
    File.open "source/images/#{path}", 'rb', &:read
  end
end

activate :i18n, mount_at_root: :fr, langs: [:fr, :en]
activate :sprockets

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'gh-pages'
  deploy.build_before = true
end

set :fonts_dir, 'fonts'

ignore '*/vendor/*'

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash

  activate :asset_host, host: 'https://dependn.com'
end
