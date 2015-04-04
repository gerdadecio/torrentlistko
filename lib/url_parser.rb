class UrlParser

  FORMAT = /^.+?[^\/:](?=[?\/]|$)/
  LOCALHOSTFORMAT = /^localhost$|^127(?:\.[0-9]+){0,2}\.[0-9]+$|^(?:0*\:)*?:?0*1$|localhost\:\b(0-9)?\b/


  class << self
    def parse string
      string ||= ''

      return '' if string.match(LOCALHOSTFORMAT).to_s != ""
      string.match(FORMAT).to_s
        .sub("http://", "")
        .sub("https://", "")
        .sub("www.", "")
    end
  end #of class methods

end