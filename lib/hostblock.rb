require 'hostblock/version'
require 'set'
require 'open-uri'
require 'parallel'

module Hostblock
  HOST_FILES = %w(http://someonewhocares.org/hosts/zero/hosts
                  http://winhelp2002.mvps.org/hosts.txt
                  http://www.malwaredomainlist.com/hostslist/hosts.txt
                  http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0D=&mimetype=plaintext&useip=0.0.0.0)

  REJECTS = %w(localhost
               local
               localhost.localdomain)

  HOST_REGEX = /^(?:0\.0\.0\.0|127\.0\.0\.1)\s+(\S+)\s*$/

  def self.generate_hosts_file
    puts "# ----- Adblock (Last updated: #{Time.now})-----"
    (hosts.each_with_object(Set.new) do |(url), set|
      set << url
    end - REJECTS).sort.each { |h| puts "0.0.0.0 #{h}" }
    puts "# ----- /Adblock (Last updated: #{Time.now})-----"
  end

  def self.hosts
    Parallel.map(HOST_FILES) { |url| open(url).read.gsub(/\#.*/, '').scan(HOST_REGEX) }.flatten
  end
end
