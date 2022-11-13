#!/bin/bash
systemctl stop solt
systemctl stop nginx
swift build -c release && cp `swift build -c release --show-bin-path`/Run ./executable/solt
systemctl start solt
systemctl start nginx
