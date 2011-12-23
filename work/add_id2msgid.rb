#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

i=0
File.open("../org-ja.po", "r").each do |s|
  if /^msgid\s*/ =~ s
    id = "msgid" + format("%004d", i)
    s = "# #{id}\n" + s
    puts s
    i = i+1
  else
    puts s
  end
end
