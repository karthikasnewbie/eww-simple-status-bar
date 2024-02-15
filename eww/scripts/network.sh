#!/bin/bash

#command=nmcli -t -f active,ssid dev wifi | grep ^yes | cut -d: -f2

network ()
{
	nmcli -t -f active,ssid dev wifi | grep ^yes | cut -d: -f2
}
network
