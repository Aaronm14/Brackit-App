path = "~/lapse"

duration = 60 #* 60 * 60  Time to run (1 seconds)
interval = 5 #*  60 Time between each photo (5secs)

end_at = Time.now + duration

i = 0
while Time.now <= end_at do
  `say "say cheese sir"`
  puts Time.now
  puts end_at
  i += 1
  system "imagesnap #{path}/%05d.jpg" % i
  sleep interval
end

#CD into lapse directory then run: ffmpeg -r 1 -i %05d.jpg lapse.mp4
#-r is the rate, frames per second
# Used this website: http://niryariv.wordpress.com/2010/02/12/time-lapse-photography-with-macbooks-isight/