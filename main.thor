class W < Thor
  include Thor::Actions

  def self.source_root
    File.dirname(__FILE__)
  end

  desc "test NAME", "generate test file"
  method_option :dir, aliases: "-d", desc: "Where to put the test file", default: "test"
  def test(name)
    @name = name
    dir = options[:dir]
    template 'templates/test.tt', "#{dir}/#{name}_test.rb"
  end
end
