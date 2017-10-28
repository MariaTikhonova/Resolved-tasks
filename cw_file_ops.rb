class FileMaster

  def initialize(filepath)
  @filepath=filepath
  end

  def extension
  @filepath.split('/').last.split('.').last
  end

  def filename
  @filepath.split('/').last.split('.').first
  end

  def dirpath
   @filepath.split('/')[0...-1].join('/')+'/'
  end

end

 master = FileMaster.new('/Users/person1/Pictures/house.png')
 master.extension
 master.filename
 master.dirpath



