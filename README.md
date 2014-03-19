# API Service


- orgnizatied by chad

## background

因项目需要， 为组内测试纯API模式开发框架。选用的Grape API, 为了和时机情况更接近， 在不断的重构中加入了active_record、数据库配置、rake、routes、migration、代码测试、覆盖率、部署以及压力测试, 最后的实现结果就是一个mini rails!


## Features

- based on grape api
- integrated active_record
- integrated database.yaml
- integrated rake
- integrated routes
- integrated migration
- integrated rack test
- integrated test coverage
- integrated rack deploy
- integrated stress test

## Stress Test

bombardment url.txt 10 10 50 1

url.txt content :

`http://localhost/info GET`

one result:

```sh
Transactions:           13411 hits
Availability:          97.27 %
Elapsed time:          59.98 secs
Data transferred:         0.55 MB
Response time:            0.37 secs
Transaction rate:       223.59 trans/sec
Throughput:           0.01 MB/sec
Concurrency:           83.09
Successful transactions:       13411
Failed transactions:           376
Longest transaction:          0.99
Shortest transaction:         0.00
```
learn more to see the files in doc directory.
