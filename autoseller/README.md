#  AutoSeller

+ 注意仿真波形的设置，输入信号要在时钟上升沿到来时立刻撤除

+ 必须添加时钟信号，否则会出现逻辑混乱，同时在编译时quartus也会给出下述类型的错误

```
Warning: Latch seller:inst|cur_state.st0_94 has unsafe behavior
Warning: Ports D and ENA on the latch are fed by the same signal X
```