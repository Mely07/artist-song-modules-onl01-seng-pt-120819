module Findable
  
  def find_by_name(name) 
    self.all.detect{|a| a.name == name} #replaced @@artist/song with self.all/all
  end

end

#Remember that we need to keep the content of this method abstract. Inside the Findable.find_by_name method, we can't use a class-specific class variable like @@artists, because our method would break when included in any class that didn't define such a variable. Is there a way to reference the collection of all of the instances of a class, without specifically referencing class variables that are only defined in certain classes? @@all??

