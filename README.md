# Aleo manual

## System

Install Ubuntu 18.04-20.04, server version, without GUI components

## GPU

- NVIDIA: Driver version 515 and above (Example: 515.78)

## Start-up command

Unpack the ‘Aleo miner’ file, and copy ‘aleo_setup.sh’, ‘aleo-prover-cuda’, and ‘config.cfg’ to your mining machine, keeping all the three in the same directory.

Configure the mining parameters in ‘config.cfg’ file.
- Modify `ACCOUNT_NAME=accountname` in the aleo.sh file to set `accountname` to your f2pool account name
- Modify `POOL="xxx.xxx.xxx.xxx:xxxx"` in the aleo.sh file. If you choose to connect to the non-SSL server,  `POOL="aleo-asia.f2pool.com:4400"` . If you you choose to connect to the SSL server, set `xxx.xxx.xxx.xxx:xxxx` to the proxy address of your [stunnel](#stunnel installation). [Related guide](https://f2pool.io/mining/guides/how-to-mine-aleo/?_ga=2.261973965.1760295878.1670166632-1277269998.1658672539).

The first time you run the mining software you need to execute this command with sudo privileges：
- execute the command `sudo ./aleo_setup.sh`
- Execute the command to check if the program has started successfully `ps aux |grep aleo`
- After 3 minutes, if you can see a log like this in prover.log, the command was executed successfully.
```
2022-12-09 00:19:41.041  INFO 2.1.2 474322 perf: 870059 (1m: 1319.02 P/s, 5m: 1317.87 P/s, 30m: --- P/s, 60m: --- P/s)
2022-12-09 00:20:41.042  INFO 2.1.2 474322 perf: 949274 (1m: 1320.25 P/s, 5m: 1318.25 P/s, 30m: --- P/s, 60m: --- P/s)
2022-12-09 00:21:41.043  INFO 2.1.2 474322 perf: 1028496 (1m: 1320.37 P/s, 5m: 1319.03 P/s, 30m: --- P/s, 60m: --- P/s)
2022-12-09 00:22:41.044  INFO 2.1.2 474322 perf: 1107681 (1m: 1319.75 P/s, 5m: 1319.43 P/s, 30m: --- P/s, 60m: --- P/s) 
```

Execute the mining command to start mining (mining programs will start automatically on boot in the future.)
- `./start_aleo.sh`

Execute the command to stop mining  `./start_aleo.sh`

## View log

- View log `tail -f prover.log `
- Hashrate
  - 1m: the average number of prover_solutions produced per second in the last 1 minute
  - 5m: the average number of prover_solutions generated per second in the last 5 minutes
  - perf: followed by a number indicating the total number of prover_solutions generated