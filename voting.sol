// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 定义一个投票合约
contract Voting {
    // 定义投票结构体，包含接收者地址和时间戳
    struct Vote {
        address receiver;  // 接收投票的地址
        uint256 timestamp; // 投票的时间戳
    }

    // 使用映射来存储每个地址的投票信息
    mapping(address => Vote) public votes;
    // 声明一个布尔变量来跟踪投票是否开启
    bool public voting;

    // 定义事件，用于记录投票的添加、移除、投票开始和停止
    event AddVote(address indexed voter, address indexed receiver, uint256 timestamp);
    event RemoveVote(address indexed voter);
    event StartVoting(address indexed startedBy);
    event StopVoting(address indexed stoppedBy);

    // 构造函数，初始化时关闭投票
    constructor() {
        voting = false;
    }

    // 开始投票的函数，只能由外部调用
    function startVoting() external returns (bool) {
        voting = true;  // 开启投票
        emit StartVoting(msg.sender);  // 触发投票开始事件
        return true;  // 返回成功状态
    }
}