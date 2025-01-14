#include "\x\alive\addons\civ_placement\script_component.hpp"
ALIVE_clusterBuild = [CLUSTERBUILD];
ALIVE_clustersMil = [] call ALIVE_fnc_hashCreate;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["8567",[1101.87,3398.42,-0.0080719]]];
_nodes set [count _nodes, ["8596",[1089.81,3350.49,0.00373077]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_0"] call ALIVE_fnc_hashSet;
[_cluster,"center",[1096.12,3374.05]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_0",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["13830",[4903.05,5906.88,-0.10696]]];
_nodes set [count _nodes, ["13449",[4975.31,5972.42,0]]];
_nodes set [count _nodes, ["12827",[4644.39,6018.28,0.000167847]]];
_nodes set [count _nodes, ["12800",[4679.38,6046.86,0.00117874]]];
_nodes set [count _nodes, ["12817",[4715.17,6073.94,0.000347137]]];
_nodes set [count _nodes, ["13683",[4850.04,5936.79,0.0872936]]];
_nodes set [count _nodes, ["13048",[4579,5950.28,0.0100021]]];
_nodes set [count _nodes, ["13722",[4893.41,5958.57,0.0100269]]];
_nodes set [count _nodes, ["13392",[4923.53,5980.1,0.0100212]]];
_nodes set [count _nodes, ["13706",[4917.55,5921.37,0.0140743]]];
_nodes set [count _nodes, ["13708",[4913.06,5927.08,0.0192394]]];
_nodes set [count _nodes, ["13714",[4919.21,5931.89,-0.0189743]]];
_nodes set [count _nodes, ["13717",[4923.69,5926.18,-0.0141468]]];
_nodes set [count _nodes, ["13710",[4931.06,5931.96,0.0298996]]];
_nodes set [count _nodes, ["13713",[4926.58,5937.67,0.0364132]]];
_nodes set [count _nodes, ["13716",[4932.71,5942.49,0.0120239]]];
_nodes set [count _nodes, ["13718",[4939.58,5947.87,-0.00348854]]];
_nodes set [count _nodes, ["13705",[4944.06,5942.16,-0.00041008]]];
_nodes set [count _nodes, ["13711",[4937.19,5936.77,-0.0208607]]];
_nodes set [count _nodes, ["13715",[4950.21,5946.97,-0.00133324]]];
_nodes set [count _nodes, ["13709",[4945.72,5952.68,-0.00689888]]];
_nodes set [count _nodes, ["13712",[4953.08,5958.46,0.00133896]]];
_nodes set [count _nodes, ["13707",[4957.58,5952.75,-0.00554276]]];
_nodes set [count _nodes, ["13843",[4963.71,5957.56,-0.00460434]]];
_nodes set [count _nodes, ["13844",[4959.22,5963.28,-0.00379944]]];
_nodes set [count _nodes, ["13947",[4815.53,5846.65,-0.211]]];
_nodes set [count _nodes, ["13946",[4838.34,5817.04,-0.191999]]];
_nodes set [count _nodes, ["13109",[4774.48,5869.96,-3.8147e-06]]];
_nodes set [count _nodes, ["13204",[4727.05,5838.99,0]]];
_nodes set [count _nodes, ["13156",[4709.44,5816.25,3.55987]]];
_nodes set [count _nodes, ["13198",[4736.98,5804.95,-0.00225067]]];
_nodes set [count _nodes, ["14880",[4782.06,5743.73,0.00486946]]];
_nodes set [count _nodes, ["14130",[4910.35,5758.19,0]]];
_nodes set [count _nodes, ["13423",[5107.66,6026.95,-0.00315094]]];
_nodes set [count _nodes, ["4294",[4904,6275.02,0.0175095]]];
_nodes set [count _nodes, ["4170",[4652.98,6237.25,0.06707]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_1"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4842.85,6009.3]] call ALIVE_fnc_hashSet;
[_cluster,"size",296.071] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_1",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["19792",[4208.6,4447.64,-0.0266418]]];
_nodes set [count _nodes, ["20810",[4206.91,4269.02,0.00997543]]];
_nodes set [count _nodes, ["20791",[4211.2,4296.38,0.000305176]]];
_nodes set [count _nodes, ["20824",[4242.91,4290.02,-0.0149231]]];
_nodes set [count _nodes, ["20814",[4172.75,4320.71,-0.0114975]]];
_nodes set [count _nodes, ["20736",[4180.79,4336.95,-0.0184937]]];
_nodes set [count _nodes, ["20737",[4185.92,4344,-0.0518303]]];
_nodes set [count _nodes, ["20658",[4193.75,4376.45,0.149612]]];
_nodes set [count _nodes, ["20649",[4153.76,4393.26,-0.000774384]]];
_nodes set [count _nodes, ["20648",[4144.64,4393.25,0.000270844]]];
_nodes set [count _nodes, ["10502",[4135.06,4393.39,9.15527e-05]]];
_nodes set [count _nodes, ["10501",[4125.13,4393.56,0.0160065]]];
_nodes set [count _nodes, ["10504",[4132.19,4421.48,-0.307064]]];
_nodes set [count _nodes, ["20710",[4158.34,4422.9,0.000541687]]];
_nodes set [count _nodes, ["20709",[4158.64,4431.8,0]]];
_nodes set [count _nodes, ["20711",[4153.16,4406.6,0]]];
_nodes set [count _nodes, ["19754",[4163.1,4462.88,0.0147133]]];
_nodes set [count _nodes, ["8458",[4140.32,4479.21,0.143517]]];
_nodes set [count _nodes, ["8356",[4136.75,4503.35,-0.0874329]]];
_nodes set [count _nodes, ["8352",[4129.57,4503.38,-0.475624]]];
_nodes set [count _nodes, ["8350",[4122.4,4503.51,-0.448135]]];
_nodes set [count _nodes, ["8354",[4115.21,4503.53,-0.420132]]];
_nodes set [count _nodes, ["8355",[4108.19,4503.63,-0.375599]]];
_nodes set [count _nodes, ["8348",[4101,4503.65,-0.356819]]];
_nodes set [count _nodes, ["8351",[4107.97,4517.28,-0.38089]]];
_nodes set [count _nodes, ["8347",[4115.16,4517.27,-0.392174]]];
_nodes set [count _nodes, ["8353",[4122.18,4517.19,-0.098629]]];
_nodes set [count _nodes, ["8349",[4129.36,4517.18,0.0426483]]];
_nodes set [count _nodes, ["8342",[4092.34,4520.16,-0.0814819]]];
_nodes set [count _nodes, ["8462",[4098.6,4473.94,-0.308601]]];
_nodes set [count _nodes, ["10503",[4079.16,4423.51,-0.30843]]];
_nodes set [count _nodes, ["10466",[4035.09,4403.97,-0.0189438]]];
_nodes set [count _nodes, ["10548",[4081.05,4361.9,0.16415]]];
_nodes set [count _nodes, ["10520",[4087.3,4326.55,0.00370407]]];
_nodes set [count _nodes, ["10519",[4070.5,4322.35,4.19617e-05]]];
_nodes set [count _nodes, ["19700",[4180.01,4495.19,-0.089386]]];
_nodes set [count _nodes, ["19804",[4177.82,4485.36,-0.15197]]];
_nodes set [count _nodes, ["19803",[4212.48,4484.61,-0.0515327]]];
_nodes set [count _nodes, ["19701",[4212.74,4496.39,-0.0329323]]];
_nodes set [count _nodes, ["19699",[4217.86,4518.79,-0.0465927]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_2"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4139.1,4393.96]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_2",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["17348",[6266.78,5845.1,-0.0030899]]];
_nodes set [count _nodes, ["17215",[6257.17,5948.97,0.0100212]]];
_nodes set [count _nodes, ["17247",[6204.21,5861.71,0.0138435]]];
_nodes set [count _nodes, ["17251",[6202.89,5895.76,-0.0225449]]];
_nodes set [count _nodes, ["17249",[6213.44,5903.34,0.0108147]]];
_nodes set [count _nodes, ["17189",[6230.59,5929.76,-0.137764]]];
_nodes set [count _nodes, ["17187",[6265.26,5918.9,0.0558739]]];
_nodes set [count _nodes, ["17347",[6274.58,5913.21,-0.103592]]];
_nodes set [count _nodes, ["17343",[6283.85,5904.24,0.0147858]]];
_nodes set [count _nodes, ["17344",[6300.29,5888.38,-0.19772]]];
_nodes set [count _nodes, ["17346",[6306.85,5882.81,-0.0712929]]];
_nodes set [count _nodes, ["17345",[6299.68,5864.15,0.0130501]]];
_nodes set [count _nodes, ["17412",[6293.11,5859.53,0.00337982]]];
_nodes set [count _nodes, ["17413",[6266.68,5820.36,-0.19659]]];
_nodes set [count _nodes, ["17250",[6255.33,5878.51,0.0431671]]];
_nodes set [count _nodes, ["17248",[6247.01,5886.22,-0.00224686]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_3"] call ALIVE_fnc_hashSet;
[_cluster,"center",[6254.85,5885.11]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_3",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["30482",[4321.58,1263.41,-0.00498962]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_4"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4320.91,1262.7]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_4",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["32528",[4698.99,700.086,0.00610352]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_5"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4699.96,700.226]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_5",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["29412",[4608.39,2307.62,0.00259399]]];
_nodes set [count _nodes, ["29419",[4609.57,2320.89,0.000572205]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_6"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4610.09,2314.11]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_6",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["21337",[4753.06,3827.91,0.00240326]]];
_nodes set [count _nodes, ["21371",[4714.87,3827.11,-0.00560379]]];
_nodes set [count _nodes, ["21323",[4711.94,3845.86,-0.0139427]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_7"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4731.95,3836.57]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_7",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["15111",[4260.32,5478.21,0]]];
_nodes set [count _nodes, ["15153",[4249.64,5465.77,0.00109482]]];
_nodes set [count _nodes, ["15155",[4252.33,5441.1,4.71458]]];
_nodes set [count _nodes, ["7119",[3943.21,5513.99,-0.00204086]]];
_nodes set [count _nodes, ["7120",[3932.65,5509.16,-0.000621796]]];
_nodes set [count _nodes, ["7013",[4061.64,5636.83,0.0100689]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_8"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4096.74,5538.48]] call ALIVE_fnc_hashSet;
[_cluster,"size",183.549] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_8",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["17079",[5985.85,6080.98,-0.0120544]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_9"] call ALIVE_fnc_hashSet;
[_cluster,"center",[5985.48,6080.07]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_9",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["3284",[6564.52,7828.44,-0.0131836]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_10"] call ALIVE_fnc_hashSet;
[_cluster,"center",[6564.96,7829.6]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_10",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["9567",[3275.36,4076.38,0.333862]]];
_nodes set [count _nodes, ["9664",[3371.71,4045.81,0.22591]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_11"] call ALIVE_fnc_hashSet;
[_cluster,"center",[3323.96,4063.24]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_11",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["8075",[3739.72,4613.34,0.0355148]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_12"] call ALIVE_fnc_hashSet;
[_cluster,"center",[3740.29,4611.79]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_12",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["15073",[4468.79,5544.82,0]]];
_nodes set [count _nodes, ["14955",[4516.46,5626.54,0]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_13"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4492.63,5585.68]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",0] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorGreen"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMil,"c_13",_cluster] call ALIVE_fnc_hashSet;
ALIVE_clustersMilHQ = [] call ALIVE_fnc_hashCreate;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["8567",[1101.87,3398.42,-0.0080719]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_14"] call ALIVE_fnc_hashSet;
[_cluster,"center",[1101.92,3396.78]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHQ,"c_14",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["13830",[4903.05,5906.88,-0.10696]]];
_nodes set [count _nodes, ["13449",[4975.31,5972.42,0]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_15"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4938.74,5939.82]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHQ,"c_15",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["19792",[4208.6,4447.64,-0.0266418]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_16"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4207.8,4446.87]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHQ,"c_16",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["17348",[6266.78,5845.1,-0.0030899]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_17"] call ALIVE_fnc_hashSet;
[_cluster,"center",[6265.67,5845.07]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",50] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorRed"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHQ,"c_17",_cluster] call ALIVE_fnc_hashSet;
ALIVE_clustersMilAir = [] call ALIVE_fnc_hashCreate;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["12827",[4644.39,6018.28,0.000167847]]];
_nodes set [count _nodes, ["12800",[4679.38,6046.86,0.00117874]]];
_nodes set [count _nodes, ["12817",[4715.17,6073.94,0.000347137]]];
_nodes set [count _nodes, ["13683",[4850.04,5936.79,0.0872936]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_18"] call ALIVE_fnc_hashSet;
[_cluster,"center",[]] call ALIVE_fnc_hashSet;
[_cluster,"size",0] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",20] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorOrange"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilAir,"c_18",_cluster] call ALIVE_fnc_hashSet;
ALIVE_clustersMilHeli = [] call ALIVE_fnc_hashCreate;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["20810",[4206.91,4269.02,0.00997543]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_19"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4206.91,4269.02]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",20] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorYellow"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHeli,"c_19",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["13048",[4579,5950.28,0.0100021]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_20"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4579,5950.28]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",20] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorYellow"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHeli,"c_20",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["13722",[4893.41,5958.57,0.0100269]]];
_nodes set [count _nodes, ["13392",[4923.53,5980.1,0.0100212]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_21"] call ALIVE_fnc_hashSet;
[_cluster,"center",[4908.47,5969.34]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",20] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorYellow"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHeli,"c_21",_cluster] call ALIVE_fnc_hashSet;
_cluster = [nil, "create"] call ALIVE_fnc_cluster;
_nodes = [];
_nodes set [count _nodes, ["17215",[6257.17,5948.97,0.0100212]]];
[_cluster,"nodes",_nodes] call ALIVE_fnc_hashSet;
[_cluster, "state", _cluster] call ALIVE_fnc_cluster;
[_cluster,"clusterID","c_22"] call ALIVE_fnc_hashSet;
[_cluster,"center",[6257.17,5948.97]] call ALIVE_fnc_hashSet;
[_cluster,"size",150] call ALIVE_fnc_hashSet;
[_cluster,"type","MIL"] call ALIVE_fnc_hashSet;
[_cluster,"priority",20] call ALIVE_fnc_hashSet;
[_cluster,"debugColor","ColorYellow"] call ALIVE_fnc_hashSet;
[ALIVE_clustersMilHeli,"c_22",_cluster] call ALIVE_fnc_hashSet;
