# THOS

是一个low-effort的Linux发行版，基于Debian稳定版。主要目标是证明我的两个观点：

* Linux桌面软件已经足够成熟好用
* 目前发行版的配置没有为开箱即用充分考虑

所以THOS是一个开箱即用的Linux桌面发行版。

# 软件截图

![THOS桌面](images/screenshot.png?raw=true)

# 生成镜像

本项目使用Debian Live Build工具生成镜像。由于项目处于早期阶段，有些事情还需要手工操作。之后会写脚本的。

* 装入第三方字体：将字体文件放入`<arch>/config/includes.chroot/usr/share/fonts`中
* 装入第三方`deb`包：使用`dpkg-dev`包中的`dpkg-name`命令对`deb`包进行重命名，并放入`<arch>/config/packages.chroot`中
* 装入第三方扩展：下载对应GNOME版本的以下扩展，解压每个扩展到单独的文件夹中，并将每个文件夹重命名为扩展的UUID名称（在`metadata.json`中），放入`<arch>/config/includes.chroot/usr/share/gnome-shell/extensions`中；如果扩展没有附带`gschemas.compiled`，需要自行使用`glib-compile-schema`命令编译
  * Dash to Dock：https://extensions.gnome.org/extension/307/dash-to-dock/
  * ArcMenu：https://extensions.gnome.org/extension/3628/arcmenu/
  * AppIndicator and KStatusNotifierItem Support：https://extensions.gnome.org/extension/615/appindicator-support/
  * Lock Keys：https://extensions.gnome.org/extension/36/lock-keys/
  * Just Perfection：https://extensions.gnome.org/extension/3843/just-perfection/
  * Blur my Shell：https://extensions.gnome.org/extension/3193/blur-my-shell/
  * Removable Drive Menu：https://extensions.gnome.org/extension/7/removable-drive-menu/
  * Light Style：https://extensions.gnome.org/extension/6198/light-style/
  * Lunar Calendar：https://extensions.gnome.org/extension/675/lunar-calendar/
  * Caffeine：https://extensions.gnome.org/extension/517/caffeine/
  * Input Method Panel：https://extensions.gnome.org/extension/261/kimpanel/
* 环境配置：安装`live-build`包
* 生成镜像：在`<arch>`文件夹中执行`lb build`
