puppet-downloadfile
===================

download file and verify via checksum   
   
use like this:   

```ruby
class logstash () 
{
  downloadfile::and_md5check { 
    logstash:
      url      => "https://logstash.objects.dreamhost.com/release/logstash-1.1.4-monolithic.jar",
      dest     => "/tmp/logstash.jar",
      md5sum     => "68ac6c953aad026752f69ae7c15b13f4",
      user  => "vagrant",
      group => "vagrant",
      chmod => "770",
  }
}
```
