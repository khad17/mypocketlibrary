require 'rubygems'
require 'net/ftp'

class DownloadController < ApplicationController
  
  
  def downloadFile
       #Net::SFTP.start("mpltest.comeze.com", "a6718729", :password => "MPL1212") do |sftp|
        ftpSrc = Net::FTP.new('mpltest.comeze.com')
        ftpSrc.login("a6718729","MPL1212")
        ftpSrc.chdir('/doc')
        ftpTrg = Net::FTP.new('mpltest.comeze.com')
        ftpTrg.login("a6718729","MPL1212")
        ftpTrg.chdir('/pub')
        ftpSrc.gettextfile('testMPL',localFile=File.basename('testMPL'))
        ftpTrg.puttextfile('testMPL')
        ftpSrc.get('PDFTest.pdf',localFile=File.basename('PDFTest.pdf'))
        ftpTrg.put('PDFTest.pdf')
        ftpSrc.quit
        ftpTrg.quit
        redirect_to(contact_path, :notice => "Message was successfully sent.")

end 
  
      #sftp.stat!(file_path) do |response|
        #return true if response.ok?
      #end
  
  # The user can request to receive this resource as HTML or PDF.
  def show
    @download = Download.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf{ render :pdf => generate_pdf(@download) }
    end
  end
  
end
