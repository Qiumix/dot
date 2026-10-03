#!/usr/bin/env fish

# 启动 waydroid 会话
echo (set_color cyan)"[INFO] 正在启动 Waydroid 会话..."(set_color normal)
waydroid session start &>/dev/null &
sleep 15
echo (set_color green)"[ OK ] Waydroid 会话已启动"(set_color normal)

# 启动明日方舟
echo (set_color yellow)"[WARN] 正在启动 明日方舟..."(set_color normal)
waydroid app launch com.hypergryph.arknights &>/dev/null &
echo (set_color green)"[ OK ] 明日方舟 已启动"(set_color normal)

# 启动 adb 服务
echo (set_color cyan)"[INFO] 正在启动 ADB 服务..."(set_color normal)
adb devices -l &>/dev/null &
echo (set_color green)"[ OK ] ADB 服务已启动"(set_color normal)

# 连接 adb
echo (set_color cyan)"[INFO] 正在连接 ADB..."(set_color normal)
waydroid adb connect 2>&1 | bat --color=always -p --paging=never -l log
echo (set_color green)"[ OK ] ADB 已连接"(set_color normal)

# 运行 MAA 日常任务
echo (set_color yellow)"[WARN] 正在执行 MAA 日常任务..."(set_color normal)

set log_dir (maa dir log)
set timestamp (date +%Y/%m/%d/%H:%M:%S)
set log_file "$log_dir/$timestamp.log"
mkdir -p (dirname "$log_file")
maa run 1_daily -v 2>&1 | tee -a "$log_file" | bat --color=always -p --paging=never -l log

echo (set_color green)"[ OK ] MAA 日常任务完成"(set_color normal)

# 停止 waydroid 会话
echo (set_color cyan)"[INFO] 正在停止 Waydroid 会话..."(set_color normal)
waydroid session stop
echo (set_color green)"[ OK ] Waydroid 会话已停止"(set_color normal)
