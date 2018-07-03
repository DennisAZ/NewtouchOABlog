<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<jsp:include page="/common/main.jsp" flush="true" />
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#left {
	width: 400px;
	height: 300px;
	float: left;
}

#right {
	width: 400px;
	height: 300px;
	float: right;
}

#middle {
	height: 300px;
	margin: 0 400px 0 400px;
}
</style>
</head>
<body>
	<div id="main2" style="width: 100%;height:800px;"></div>
	<div id="main1" style="width: 100%;height:400px;"></div>
	<div id="main3" style="width: 100%;height:400px;"></div>
	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart1 = echarts.init(document.getElementById('main1'));
        var myChart2 = echarts.init(document.getElementById('main2'));
        var myChart3 = echarts.init(document.getElementById('main3'));
        // 指定图表的配置项和数据
       
        var data1 = [];
        var data2 = [];
        var data3 = [];

        var random = function (max) {
            return (Math.random() * max).toFixed(3);
        };

        for (var i = 0; i < 500; i++) {
            data1.push([random(15), random(10), random(1)]);
            data2.push([random(10), random(10), random(1)]);
            data3.push([random(15), random(10), random(1)]);
        }
        
        var option1 = {
        		backgroundColor: '#eee',
        		animation: false,
        	    legend: {
        	        data: ['scatter', 'scatter2', 'scatter3']
        	    },
        	    tooltip: {
        	    },
        	    xAxis: {
        	        type: 'value',
        	        min: 'dataMin',
        	        max: 'dataMax',
        	        splitLine: {
        	            show: true
        	        }
        	    },
        	    yAxis: {
        	        type: 'value',
        	        min: 'dataMin',
        	        max: 'dataMax',
        	        splitLine: {
        	            show: true
        	        }
        	    },
        	    dataZoom: [
        	        {
        	            type: 'slider',
        	            show: true,
        	            xAxisIndex: [0],
        	            start: 1,
        	            end: 35
        	        },
        	        {
        	            type: 'slider',
        	            show: true,
        	            yAxisIndex: [0],
        	            left: '93%',
        	            start: 29,
        	            end: 36
        	        },
        	        {
        	            type: 'inside',
        	            xAxisIndex: [0],
        	            start: 1,
        	            end: 35
        	        },
        	        {
        	            type: 'inside',
        	            yAxisIndex: [0],
        	            start: 29,
        	            end: 36
        	        }
        	    ],
        	    series: [
        	        {
        	            name: 'scatter',
        	            type: 'scatter',
        	            itemStyle: {
        	                normal: {
        	                    opacity: 0.8
        	                }
        	            },
        	            symbolSize: function (val) {
        	                return val[2] * 40;
        	            },
        	            data: data1
        	        },
        	        {
        	            name: 'scatter2',
        	            type: 'scatter',
        	            itemStyle: {
        	                normal: {
        	                    opacity: 0.8
        	                }
        	            },
        	            symbolSize: function (val) {
        	                return val[2] * 40;
        	            },
        	            data: data2
        	        },
        	        {
        	            name: 'scatter3',
        	            type: 'scatter',
        	            itemStyle: {
        	                normal: {
        	                    opacity: 0.8,
        	                }
        	            },
        	            symbolSize: function (val) {
        	                return val[2] * 40;
        	            },
        	            data: data3
        	        }
        	    ]
        }
        var hours = ['12a', '1a', '2a', '3a', '4a', '5a', '6a',
            '7a', '8a', '9a','10a','11a',
            '12p', '1p', '2p', '3p', '4p', '5p',
            '6p', '7p', '8p', '9p', '10p', '11p'];
	    var days = ['Saturday', 'Friday', 'Thursday',
	            'Wednesday', 'Tuesday', 'Monday', 'Sunday'];
	
	    var data = [[0,0,5],[0,1,1],[0,2,0],[0,3,0],[0,4,0],[0,5,0],[0,6,0],[0,7,0],[0,8,0],[0,9,0],[0,10,0],[0,11,2],[0,12,4],[0,13,1],[0,14,1],[0,15,3],[0,16,4],[0,17,6],[0,18,4],[0,19,4],[0,20,3],[0,21,3],[0,22,2],[0,23,5],[1,0,7],[1,1,0],[1,2,0],[1,3,0],[1,4,0],[1,5,0],[1,6,0],[1,7,0],[1,8,0],[1,9,0],[1,10,5],[1,11,2],[1,12,2],[1,13,6],[1,14,9],[1,15,11],[1,16,6],[1,17,7],[1,18,8],[1,19,12],[1,20,5],[1,21,5],[1,22,7],[1,23,2],[2,0,1],[2,1,1],[2,2,0],[2,3,0],[2,4,0],[2,5,0],[2,6,0],[2,7,0],[2,8,0],[2,9,0],[2,10,3],[2,11,2],[2,12,1],[2,13,9],[2,14,8],[2,15,10],[2,16,6],[2,17,5],[2,18,5],[2,19,5],[2,20,7],[2,21,4],[2,22,2],[2,23,4],[3,0,7],[3,1,3],[3,2,0],[3,3,0],[3,4,0],[3,5,0],[3,6,0],[3,7,0],[3,8,1],[3,9,0],[3,10,5],[3,11,4],[3,12,7],[3,13,14],[3,14,13],[3,15,12],[3,16,9],[3,17,5],[3,18,5],[3,19,10],[3,20,6],[3,21,4],[3,22,4],[3,23,1],[4,0,1],[4,1,3],[4,2,0],[4,3,0],[4,4,0],[4,5,1],[4,6,0],[4,7,0],[4,8,0],[4,9,2],[4,10,4],[4,11,4],[4,12,2],[4,13,4],[4,14,4],[4,15,14],[4,16,12],[4,17,1],[4,18,8],[4,19,5],[4,20,3],[4,21,7],[4,22,3],[4,23,0],[5,0,2],[5,1,1],[5,2,0],[5,3,3],[5,4,0],[5,5,0],[5,6,0],[5,7,0],[5,8,2],[5,9,0],[5,10,4],[5,11,1],[5,12,5],[5,13,10],[5,14,5],[5,15,7],[5,16,11],[5,17,6],[5,18,0],[5,19,5],[5,20,3],[5,21,4],[5,22,2],[5,23,0],[6,0,1],[6,1,0],[6,2,0],[6,3,0],[6,4,0],[6,5,0],[6,6,0],[6,7,0],[6,8,0],[6,9,0],[6,10,1],[6,11,0],[6,12,2],[6,13,1],[6,14,3],[6,15,4],[6,16,0],[6,17,0],[6,18,0],[6,19,0],[6,20,1],[6,21,2],[6,22,2],[6,23,6]];

	    
	    option2 = {
	    		backgroundColor: '#eee',
	    	    tooltip: {},
	    	    visualMap: {
	    	        max: 20,
	    	        inRange: {
	    	            color: ['#313695', '#4575b4', '#74add1', '#abd9e9', '#e0f3f8', '#ffffbf', '#fee090', '#fdae61', '#f46d43', '#d73027', '#a50026']
	    	        }
	    	    },
	    	    xAxis3D: {
	    	        type: 'category',
	    	        data: hours
	    	    },
	    	    yAxis3D: {
	    	        type: 'category',
	    	        data: days
	    	    },
	    	    zAxis3D: {
	    	        type: 'value'
	    	    },
	    	    grid3D: {
	    	        boxWidth: 200,
	    	        boxDepth: 80,
	    	        viewControl: {
	    	            // projection: 'orthographic'
	    	        },
	    	        light: {
	    	            main: {
	    	                intensity: 1.2,
	    	                shadow: true
	    	            },
	    	            ambient: {
	    	                intensity: 0.3
	    	            }
	    	        }
	    	    },
	    	    series: [{
	    	        type: 'bar3D',
	    	        data: data.map(function (item) {
	    	            return {
	    	                value: [item[1], item[0], item[2]],
	    	            }
	    	        }),
	    	        shading: 'lambert',

	    	        label: {
	    	            textStyle: {
	    	                fontSize: 16,
	    	                borderWidth: 1
	    	            }
	    	        },

	    	        emphasis: {
	    	            label: {
	    	                textStyle: {
	    	                    fontSize: 20,
	    	                    color: '#900'
	    	                }
	    	            },
	    	            itemStyle: {
	    	                color: '#900'
	    	            }
	    	        }
	    	    }]
	    	}
	    
	    
	    
	    var dataBJ = [
	        [1,55,9,56,0.46,18,6,"良"],
	        [2,25,11,21,0.65,34,9,"优"],
	        [3,56,7,63,0.3,14,5,"良"],
	        [4,33,7,29,0.33,16,6,"优"],
	        [5,42,24,44,0.76,40,16,"优"],
	        [6,82,58,90,1.77,68,33,"良"],
	        [7,74,49,77,1.46,48,27,"良"],
	        [8,78,55,80,1.29,59,29,"良"],
	        [9,267,216,280,4.8,108,64,"重度污染"],
	        [10,185,127,216,2.52,61,27,"中度污染"],
	        [11,39,19,38,0.57,31,15,"优"],
	        [12,41,11,40,0.43,21,7,"优"],
	        [13,64,38,74,1.04,46,22,"良"],
	        [14,108,79,120,1.7,75,41,"轻度污染"],
	        [15,108,63,116,1.48,44,26,"轻度污染"],
	        [16,33,6,29,0.34,13,5,"优"],
	        [17,94,66,110,1.54,62,31,"良"],
	        [18,186,142,192,3.88,93,79,"中度污染"],
	        [19,57,31,54,0.96,32,14,"良"],
	        [20,22,8,17,0.48,23,10,"优"],
	        [21,39,15,36,0.61,29,13,"优"],
	        [22,94,69,114,2.08,73,39,"良"],
	        [23,99,73,110,2.43,76,48,"良"],
	        [24,31,12,30,0.5,32,16,"优"],
	        [25,42,27,43,1,53,22,"优"],
	        [26,154,117,157,3.05,92,58,"中度污染"],
	        [27,234,185,230,4.09,123,69,"重度污染"],
	        [28,160,120,186,2.77,91,50,"中度污染"],
	        [29,134,96,165,2.76,83,41,"轻度污染"],
	        [30,52,24,60,1.03,50,21,"良"],
	        [31,46,5,49,0.28,10,6,"优"]
	    ];

	    var dataGZ = [
	        [1,26,37,27,1.163,27,13,"优"],
	        [2,85,62,71,1.195,60,8,"良"],
	        [3,78,38,74,1.363,37,7,"良"],
	        [4,21,21,36,0.634,40,9,"优"],
	        [5,41,42,46,0.915,81,13,"优"],
	        [6,56,52,69,1.067,92,16,"良"],
	        [7,64,30,28,0.924,51,2,"良"],
	        [8,55,48,74,1.236,75,26,"良"],
	        [9,76,85,113,1.237,114,27,"良"],
	        [10,91,81,104,1.041,56,40,"良"],
	        [11,84,39,60,0.964,25,11,"良"],
	        [12,64,51,101,0.862,58,23,"良"],
	        [13,70,69,120,1.198,65,36,"良"],
	        [14,77,105,178,2.549,64,16,"良"],
	        [15,109,68,87,0.996,74,29,"轻度污染"],
	        [16,73,68,97,0.905,51,34,"良"],
	        [17,54,27,47,0.592,53,12,"良"],
	        [18,51,61,97,0.811,65,19,"良"],
	        [19,91,71,121,1.374,43,18,"良"],
	        [20,73,102,182,2.787,44,19,"良"],
	        [21,73,50,76,0.717,31,20,"良"],
	        [22,84,94,140,2.238,68,18,"良"],
	        [23,93,77,104,1.165,53,7,"良"],
	        [24,99,130,227,3.97,55,15,"良"],
	        [25,146,84,139,1.094,40,17,"轻度污染"],
	        [26,113,108,137,1.481,48,15,"轻度污染"],
	        [27,81,48,62,1.619,26,3,"良"],
	        [28,56,48,68,1.336,37,9,"良"],
	        [29,82,92,174,3.29,0,13,"良"],
	        [30,106,116,188,3.628,101,16,"轻度污染"],
	        [31,118,50,0,1.383,76,11,"轻度污染"]
	    ];

	    var dataSH = [
	        [1,91,45,125,0.82,34,23,"良"],
	        [2,65,27,78,0.86,45,29,"良"],
	        [3,83,60,84,1.09,73,27,"良"],
	        [4,109,81,121,1.28,68,51,"轻度污染"],
	        [5,106,77,114,1.07,55,51,"轻度污染"],
	        [6,109,81,121,1.28,68,51,"轻度污染"],
	        [7,106,77,114,1.07,55,51,"轻度污染"],
	        [8,89,65,78,0.86,51,26,"良"],
	        [9,53,33,47,0.64,50,17,"良"],
	        [10,80,55,80,1.01,75,24,"良"],
	        [11,117,81,124,1.03,45,24,"轻度污染"],
	        [12,99,71,142,1.1,62,42,"良"],
	        [13,95,69,130,1.28,74,50,"良"],
	        [14,116,87,131,1.47,84,40,"轻度污染"],
	        [15,108,80,121,1.3,85,37,"轻度污染"],
	        [16,134,83,167,1.16,57,43,"轻度污染"],
	        [17,79,43,107,1.05,59,37,"良"],
	        [18,71,46,89,0.86,64,25,"良"],
	        [19,97,71,113,1.17,88,31,"良"],
	        [20,84,57,91,0.85,55,31,"良"],
	        [21,87,63,101,0.9,56,41,"良"],
	        [22,104,77,119,1.09,73,48,"轻度污染"],
	        [23,87,62,100,1,72,28,"良"],
	        [24,168,128,172,1.49,97,56,"中度污染"],
	        [25,65,45,51,0.74,39,17,"良"],
	        [26,39,24,38,0.61,47,17,"优"],
	        [27,39,24,39,0.59,50,19,"优"],
	        [28,93,68,96,1.05,79,29,"良"],
	        [29,188,143,197,1.66,99,51,"中度污染"],
	        [30,174,131,174,1.55,108,50,"中度污染"],
	        [31,187,143,201,1.39,89,53,"中度污染"]
	    ];

	    var schema = [
	        {name: 'date', index: 0, text: '日'},
	        {name: 'AQIindex', index: 1, text: 'AQI指数'},
	        {name: 'PM25', index: 2, text: 'PM2.5'},
	        {name: 'PM10', index: 3, text: 'PM10'},
	        {name: 'CO', index: 4, text: '一氧化碳（CO）'},
	        {name: 'NO2', index: 5, text: '二氧化氮（NO2）'},
	        {name: 'SO2', index: 6, text: '二氧化硫（SO2）'}
	    ];


	    var itemStyle = {
	        normal: {
	            opacity: 0.8,
	            shadowBlur: 10,
	            shadowOffsetX: 0,
	            shadowOffsetY: 0,
	            shadowColor: 'rgba(0, 0, 0, 0.5)'
	        }
	    };

	    option3 = {
	    		backgroundColor: '#eee',
	        color: [
	            '#dd4444', '#fec42c', '#80F1BE'
	        ],
	        legend: {
	            y: 'top',
	            data: ['北京', '上海', '广州'],
	            textStyle: {
	                color: '#fff',
	                fontSize: 16
	            }
	        },
	        grid: {
	            x: '10%',
	            x2: 150,
	            y: '18%',
	            y2: '10%'
	        },
	        tooltip: {
	            padding: 10,
	            backgroundColor: '#222',
	            borderColor: '#777',
	            borderWidth: 1,
	            formatter: function (obj) {
	                var value = obj.value;
	                return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
	                    + obj.seriesName + ' ' + value[0] + '日：'
	                    + value[7]
	                    + '</div>'
	                    + schema[1].text + '：' + value[1] + '<br>'
	                    + schema[2].text + '：' + value[2] + '<br>'
	                    + schema[3].text + '：' + value[3] + '<br>'
	                    + schema[4].text + '：' + value[4] + '<br>'
	                    + schema[5].text + '：' + value[5] + '<br>'
	                    + schema[6].text + '：' + value[6] + '<br>';
	            }
	        },
	        xAxis: {
	            type: 'value',
	            name: '日期',
	            nameGap: 16,
	            nameTextStyle: {
	                color: '#fff',
	                fontSize: 14
	            },
	            max: 31,
	            splitLine: {
	                show: false
	            },
	            axisLine: {
	                lineStyle: {
	                    color: '#eee'
	                }
	            }
	        },
	        yAxis: {
	            type: 'value',
	            name: 'AQI指数',
	            nameLocation: 'end',
	            nameGap: 20,
	            nameTextStyle: {
	                color: '#fff',
	                fontSize: 16
	            },
	            axisLine: {
	                lineStyle: {
	                    color: '#eee'
	                }
	            },
	            splitLine: {
	                show: false
	            }
	        },
	        visualMap: [
	            {
	                left: 'right',
	                top: '10%',
	                dimension: 2,
	                min: 0,
	                max: 250,
	                itemWidth: 30,
	                itemHeight: 120,
	                calculable: true,
	                precision: 0.1,
	                text: ['圆形大小：PM2.5'],
	                textGap: 30,
	                textStyle: {
	                    color: '#fff'
	                },
	                inRange: {
	                    symbolSize: [10, 70]
	                },
	                outOfRange: {
	                    symbolSize: [10, 70],
	                    color: ['rgba(255,255,255,.2)']
	                },
	                controller: {
	                    inRange: {
	                        color: ['#c23531']
	                    },
	                    outOfRange: {
	                        color: ['#444']
	                    }
	                }
	            },
	            {
	                left: 'right',
	                bottom: '5%',
	                dimension: 6,
	                min: 0,
	                max: 50,
	                itemHeight: 120,
	                calculable: true,
	                precision: 0.1,
	                text: ['明暗：二氧化硫'],
	                textGap: 30,
	                textStyle: {
	                    color: '#fff'
	                },
	                inRange: {
	                    colorLightness: [1, 0.5]
	                },
	                outOfRange: {
	                    color: ['rgba(255,255,255,.2)']
	                },
	                controller: {
	                    inRange: {
	                        color: ['#c23531']
	                    },
	                    outOfRange: {
	                        color: ['#444']
	                    }
	                }
	            }
	        ],
	        series: [
	            {
	                name: '北京',
	                type: 'scatter',
	                itemStyle: itemStyle,
	                data: dataBJ
	            },
	            {
	                name: '上海',
	                type: 'scatter',
	                itemStyle: itemStyle,
	                data: dataSH
	            },
	            {
	                name: '广州',
	                type: 'scatter',
	                itemStyle: itemStyle,
	                data: dataGZ
	            }
	        ]
	    };
	    
        // 使用刚指定的配置项和数据显示图表。
        myChart1.setOption(option1);
        myChart2.setOption(option2);
        myChart3.setOption(option3);
    </script>
</body>
</html>