class EmailerService
  def self.perform email
    # extract all the lines from the body of the email
    # and generate a hash of even number of columns 
    # seperated by a ':'
    result = ActionView::Base
      .full_sanitizer
      .sanitize(email.body)
      .split(/\n/)
      .map(&:squish)
      .select{|line| line.include? ':'}
      .map{|line| line.split(':').map(&:squish)}
      .select{|line| line.length.even?}
      .reduce({}) {|h, line| h.merge(Hash[*line]) }

    # return nil if the result is blank 
    return nil if result.blank?

    # return the result
    result
  end
end
