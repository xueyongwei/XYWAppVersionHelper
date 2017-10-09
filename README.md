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
    XYWVersonHelperLunchType type = [XYWAppVersionHelper shareHelper].lunchType;
    switch (type) {
        case XYWVersonHelperLunchTypeNormal:
            NSLog(@"正常启动");
            break;
        case XYWVersonHelperLunchTypeFirstLuchThisVersion:
            NSLog(@"新版本启动");
            break;
        case XYWVersonHelperLunchTypeFirstLuchAfterInstall:
            NSLog(@"安装后第一次启动");
            break;
        default:
            break;
    }
    NSLog(@"%f",[XYWAppVersionHelper shareHelper].currentVersion);
    return YES;
}
</code></pre>
