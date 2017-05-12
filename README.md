# XYWAppVersionHelper

### 使用场景
1. 应用版本兼容问题
2. 启动广告显示
3. 版本升级

### 使用方法
1. 直接下载拖入文件夹到工程
2. cocapods 添加  <code>pod 'XYWAppVersionHelper'</code>

### 示例代码
<pre><code>
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ApplaunchType type = [XYWAppVersionHelper appThislaunchType];
    switch (type) {
        case ApplaunchTypeNormal:
            NSLog(@"正常启动");
            break;
        case ApplaunchTypeThisVersionFirstLabch:
            NSLog(@"新版本启动");
            break;
        case ApplaunchTypeAfterInstallFirstLabch:
            NSLog(@"安装后第一次启动");
            break;
        case ApplaunchTypeVersionFallback:
            NSLog(@"版本回退了！");
            break;
        default:
            break;
    }
    return YES;
}
</code></pre>
