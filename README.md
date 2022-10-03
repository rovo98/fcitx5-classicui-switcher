
## Fcitx5 classicui switcher

对于使用 fcitx-rime 的小鹤音形用户来说，打字的候选窗通常是没有必要的，只有在使用通配符或查看各键位部件及小字根等需要候选窗显示内容时才需要开启候选窗。为了方便快速地开启或关闭打字候选窗，我简单地写了该脚本，如有需要它还可以配合桌面的全局快捷键使用。


<details>
<summary>Example</summary>
<img alt="" src="./assets/fcitx5-hidden-typing-windows-demo.gif"></img>
</details>

### Usage

```sh
# 1. clone this repo
git clone https://github.com/rovo98/fcitx5-classicui-switcher

# 2. execute install.sh to install 
cd fcitx5-classicui-switcher
./install.sh

# 3. Enjoy 
fcitx5-classicui-switch or fcs
```


### Note

对于隐藏打字的候选窗，通常有多种实现方案，如有将打字候选窗背景等一系列透明化、改 fcitx5 程序实现等。本脚本解决思路相对比较简单，直接利用 ``fcitx5--enable/--disable`` 配合``-r``来快速启用和停用 ``classicui`` 插件，从而达到隐藏打字候选窗的效果。

#### Updated - Recommened solution

在 [https://github.com/dcLunatic/fcitx5-rime](https://github.com/dcLunatic/fcitx5-rime) 中，根据小鹤音形的使用场景，对 fcitx-rime 进行了修改，
增加了一个配置项，启用情况下会默认隐藏候选框，仅在使用通配符 \` 以及以 `o` 符号引导的编码才会显示候选框。该方案的实现效果已类似于 windows 下的官方小鹤音形输入法隐藏打字候选框的表现。非常推荐使用😊。
