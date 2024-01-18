# CB Consolas 1.0

基于 YaHei Consolas Hybrid 1.12 修改而来
非常适合编程的字体，特别是在IDEA系列的IDE中，显示效果非常好。

针对原字体中反引号做了2处修改

#### 1.修改了反引号的形状，便于和单引号区分，原字体中反引号和单引号形状一样，容易混淆
#### 2.修改了反引号的宽度，原反引号在IDEA中只占半格，很多地方无法对齐，修改后占满一格，治好了强迫症

## 一键安装

```
wget -qO- https://raw.githubusercontent.com/caibo86/cb-consolas/main/install.sh | sudo sh
```

## 安装
+ 下载这个字体.
```
git clone https://github.com/caibo86/cb-consolas
```
+ 在/usr/share/fonts/truetype/, 下建立一个新的目录 cb-consolas
```
sudo mkdir -p /usr/share/fonts/truetype/cb-consolas
```
+ 将cb-consolas.ttf 复制到刚才建立的文件夹里.
```
sudo cp cb-consolas.ttf /usr/share/fonts/truetype/cb-consolas
```
+ 修改字体文件的权限.
```
cd /usr/share/fonts/truetype/cb-consolas
sudo chmod 644 cb-consolas.ttf
```
+ 开始安装字体.
```
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv
```
1080P分辨率的IDEA建议使用14号字体，间距1.1
2K分辨率的IDEA建议使用16号字体，间距1.1
效果非常好，搭配One Dark主题，非常舒服
