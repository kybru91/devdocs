module Docs
  class Prettier < UrlScraper
    self.name = 'Prettier'
    self.type = 'simple'
    self.release = '2.5.1'
    self.base_url = 'https://prettier.io/docs/en/'
    self.links = {
      home: 'https://prettier.io/',
      code: 'https://github.com/prettier/prettier'
    }

    # Docusaurus like react_native
    html_filters.push 'prettier/entries', 'react_native/clean_html'

    options[:container] = '.docMainWrapper'

    options[:attribution] = <<-HTML
      &copy; James Long and contributors
    HTML

    def get_latest_version(opts)
      get_npm_version('prettier', opts)
      end
  end
end