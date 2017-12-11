/**
 * 播放列表
 * @type {Array}
 * 请用数组来定义总列表
 * 再用二维数组定义每个列表
 * 其中列表里的每首歌需用对象定义
 * 请在每个列表中的第一个元素定义列表信息（必须位于第一位）
 * 列表信息必须有一个basic属性，值为true
 * 还要有一个name属性，值为列表名称
 * 可选参数为singer、image，用于为定义的该属性的歌曲调用
 * 每首歌必须有name、src、lrc三个属性
 * src为歌曲相对于index.html的相对路径或绝对路径
 * 可选singer和image属性
 * 在每首歌没有定义singer或image时将使用列表的singer或image
 * 请确保一定有一个被定义
 * 其中name为歌曲名称
 * src为歌曲文件路径
 * lrc为歌词，请用\n或\r将每行歌词隔开，否则无法识别
 */
var mplayer_song = [[
	{
		"basic":true,
		"name":"白衣飘飘的年代",
		"singer":"许嵩",
		"img":"https://y.gtimg.cn/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg"
	},
	{
		"name":"恋恋风尘",
		"singer":"老狼",
		"img":"http://p1.music.126.net/IkqZpnGPKCu8RFUyuLSr0Q==/898300999893406.jpg?param=130y130",
		"src":"http://120.24.249.135/music/niannianfengchen.mp3",
		"lrc":""
	},
	{
		"name":"模范情书",
		"singer":"老狼",
		"img":"http://p1.music.126.net/a2vSAS89jzzJzPyuOQQWVQ==/52776558134030.jpg?param=130y130",
		"src":"http://202.112.144.244/files/7006000000C9DF2A/m10.music.126.net/20170726172105/cae040d26317ffe79ecb8b5d8ae7ef83/ymusic/2fcb/737e/12b9/f7db1e505d06e758af19e74352d3a586.mp3",
		"lrc":""
	},
	{
		"name":"虎口脱险",
		"singer":"老狼",
		"img":"http://p1.music.126.net/tI1wLfO1Hbw3e6FydA6mmg==/814738116182329.jpg?param=130y130",
		"src":"http://m10.music.126.net/20171113200710/610c0350f21f96a449f309f325bf50b5/ymusic/7ffc/349e/faad/e508a8aaedbeba9730a0d50444f4257d.mp3",
		"lrc":""
	}


],

[
	{
		"basic":true,
		"name":"亲密爱人",
		"singer":"许嵩",
		"img":"https://y.gtimg.cn/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg"
	},
	{
		"name":"亲密爱人",
		"singer":"王若琳",
		"img":"http://p1.music.126.net/wAvTphtdoH3hUpTpw5CebA==/18337654928625343.jpg?param=130y130",
		"src":"http://202.112.144.244/files/51170000004FB1C4/m7.music.126.net/20151217175512/d234ae3775876c3acfe735ec34a1b898/ymusic/73a0/7dd7/d73b/f6231ec92a3294ae3b6c13bef37c540b.mp3",
		"lrc":""
	},
	{
		"name":"哀愁",
		"singer":"辛晓琪",
		"img":"http://pic.xiami.net/images/album/img8/2308/123581411452648.jpg?x-oss-process=image/resize,limit_0,m_pad,w_185,h_185",
		"src":"http://m128.xiami.net/308/2308/12358/151982_15805227_l.mp3?auth_key=1511146800-0-0-65cf410791115f8f527220afe53c626a",
		"lrc":""
	},
	{
		"name":"I Love You",
		"singer":"王若琳",
		"img":"http://p1.music.126.net/iRkt6pHKwcQKDch6-VNXZQ==/1751522023059530.jpg?param=130y130",
		"src":"http://m10.music.126.net/20171113202526/c565115bfbc0553c6bca72a202259f99/ymusic/f593/e179/8403/1f5902d5fe16c0a2921c6eba9cb90760.mp3",
		"lrc":""
	}

]
];