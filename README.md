
<svg viewBox="0 0 800 400" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="blockGradient" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#667eea;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#764ba2;stop-opacity:1" />
    </linearGradient>
    
    <linearGradient id="genesisGradient" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#f093fb;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#f5576c;stop-opacity:1" />
    </linearGradient>
    
    <filter id="glow">
      <feGaussianBlur stdDeviation="3" result="coloredBlur"/>
      <feMerge>
        <feMergeNode in="coloredBlur"/>
        <feMergeNode in="SourceGraphic"/>
      </feMerge>
    </filter>
  </defs>
  
  <style>
    .block {
      animation: slideIn 1s ease-out forwards;
      opacity: 0;
    }
    .block1 { animation-delay: 0s; }
    .block2 { animation-delay: 0.3s; }
    .block3 { animation-delay: 0.6s; }
    .block4 { animation-delay: 0.9s; }
    
    .chain-line {
      stroke-dasharray: 60;
      stroke-dashoffset: 60;
      animation: drawLine 0.5s ease-out forwards;
    }
    .line1 { animation-delay: 0.4s; }
    .line2 { animation-delay: 0.7s; }
    .line3 { animation-delay: 1s; }
    
    .hash-text {
      animation: fadeIn 0.5s ease-out forwards;
      opacity: 0;
    }
    .hash1 { animation-delay: 0.5s; }
    .hash2 { animation-delay: 0.8s; }
    .hash3 { animation-delay: 1.1s; }
    .hash4 { animation-delay: 1.4s; }
    
    .data-icon {
      animation: pulse 2s ease-in-out infinite;
    }
    .icon1 { animation-delay: 1.5s; }
    .icon2 { animation-delay: 1.7s; }
    .icon3 { animation-delay: 1.9s; }
    .icon4 { animation-delay: 2.1s; }
    
    @keyframes slideIn {
      from {
        transform: translateY(-30px);
        opacity: 0;
      }
      to {
        transform: translateY(0);
        opacity: 1;
      }
    }
    
    @keyframes drawLine {
      to {
        stroke-dashoffset: 0;
      }
    }
    
    @keyframes fadeIn {
      to {
        opacity: 1;
      }
    }
    
    @keyframes pulse {
      0%, 100% {
        transform: scale(1);
        opacity: 0.8;
      }
      50% {
        transform: scale(1.1);
        opacity: 1;
      }
    }
    
    .title {
      font-family: 'Monaco', 'Courier New', monospace;
      font-size: 28px;
      font-weight: bold;
      fill: #2d3748;
    }
    
    .block-text {
      font-family: 'Monaco', 'Courier New', monospace;
      font-size: 12px;
      fill: white;
      font-weight: bold;
    }
    
    .hash {
      font-family: 'Monaco', 'Courier New', monospace;
      font-size: 9px;
      fill: #4a5568;
    }
    
    .label {
      font-family: 'Monaco', 'Courier New', monospace;
      font-size: 10px;
      fill: #718096;
    }
  </style>
  
  <!-- Title -->
  <text x="400" y="40" text-anchor="middle" class="title">⛓️ BLOCKCHAIN</text>
  
  <!-- Genesis Block -->
  <g class="block block1">
    <rect x="40" y="100" width="140" height="120" rx="8" fill="url(#genesisGradient)" filter="url(#glow)"/>
    <text x="110" y="125" text-anchor="middle" class="block-text">GENESIS</text>
    <text x="110" y="145" text-anchor="middle" class="block-text">Block #0</text>
    
    <circle cx="110" cy="170" r="15" fill="rgba(255,255,255,0.2)" class="data-icon icon1"/>
    <text x="110" y="176" text-anchor="middle" class="block-text" font-size="16">📦</text>
    
    <text x="110" y="205" text-anchor="middle" class="label">Prev: 0x000...</text>
  </g>
  
  <!-- Chain Line 1 -->
  <line x1="180" y1="160" x2="230" y2="160" stroke="#667eea" stroke-width="3" class="chain-line line1"/>
  <polygon points="230,160 223,156 223,164" fill="#667eea" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="0.4s" dur="0.3s" fill="freeze"/>
  </polygon>
  
  <!-- Block 1 -->
  <g class="block block2">
    <rect x="230" y="100" width="140" height="120" rx="8" fill="url(#blockGradient)" filter="url(#glow)"/>
    <text x="300" y="125" text-anchor="middle" class="block-text">BLOCK</text>
    <text x="300" y="145" text-anchor="middle" class="block-text">#1</text>
    
    <circle cx="300" cy="170" r="15" fill="rgba(255,255,255,0.2)" class="data-icon icon2"/>
    <text x="300" y="176" text-anchor="middle" class="block-text" font-size="16">💎</text>
    
    <text x="300" y="205" text-anchor="middle" class="label">Prev: 0xa3f...</text>
  </g>
  
  <!-- Chain Line 2 -->
  <line x1="370" y1="160" x2="420" y2="160" stroke="#667eea" stroke-width="3" class="chain-line line2"/>
  <polygon points="420,160 413,156 413,164" fill="#667eea" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="0.7s" dur="0.3s" fill="freeze"/>
  </polygon>
  
  <!-- Block 2 -->
  <g class="block block3">
    <rect x="420" y="100" width="140" height="120" rx="8" fill="url(#blockGradient)" filter="url(#glow)"/>
    <text x="490" y="125" text-anchor="middle" class="block-text">BLOCK</text>
    <text x="490" y="145" text-anchor="middle" class="block-text">#2</text>
    
    <circle cx="490" cy="170" r="15" fill="rgba(255,255,255,0.2)" class="data-icon icon3"/>
    <text x="490" y="176" text-anchor="middle" class="block-text" font-size="16">🔐</text>
    
    <text x="490" y="205" text-anchor="middle" class="label">Prev: 0x7b2...</text>
  </g>
  
  <!-- Chain Line 3 -->
  <line x1="560" y1="160" x2="610" y2="160" stroke="#667eea" stroke-width="3" class="chain-line line3"/>
  <polygon points="610,160 603,156 603,164" fill="#667eea" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="1s" dur="0.3s" fill="freeze"/>
  </polygon>
  
  <!-- Block 3 -->
  <g class="block block4">
    <rect x="610" y="100" width="140" height="120" rx="8" fill="url(#blockGradient)" filter="url(#glow)"/>
    <text x="680" y="125" text-anchor="middle" class="block-text">BLOCK</text>
    <text x="680" y="145" text-anchor="middle" class="block-text">#3</text>
    
    <circle cx="680" cy="170" r="15" fill="rgba(255,255,255,0.2)" class="data-icon icon4"/>
    <text x="680" y="176" text-anchor="middle" class="block-text" font-size="16">✨</text>
    
    <text x="680" y="205" text-anchor="middle" class="label">Prev: 0x9c1...</text>
  </g>
  
  <!-- Hash values below -->
  <text x="110" y="250" text-anchor="middle" class="hash hash-text hash1">Hash: 0xa3f8b2...</text>
  <text x="300" y="250" text-anchor="middle" class="hash hash-text hash2">Hash: 0x7b2c5e...</text>
  <text x="490" y="250" text-anchor="middle" class="hash hash-text hash3">Hash: 0x9c1d4a...</text>
  <text x="680" y="250" text-anchor="middle" class="hash hash-text hash4">Hash: 0x3e7f92...</text>
  
  <!-- Info Box -->
  <rect x="150" y="290" width="500" height="80" rx="8" fill="#f7fafc" stroke="#cbd5e0" stroke-width="2" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="1.6s" dur="0.5s" fill="freeze"/>
  </rect>
  
  <text x="400" y="315" text-anchor="middle" class="label" font-size="11" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="1.6s" dur="0.5s" fill="freeze"/>
    Each block contains data, a timestamp, and a cryptographic hash
  </text>
  <text x="400" y="335" text-anchor="middle" class="label" font-size="11" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="1.8s" dur="0.5s" fill="freeze"/>
    linking to the previous block, creating an immutable chain
  </text>
  <text x="400" y="355" text-anchor="middle" class="label" font-size="11" font-weight="bold" opacity="0">
    <animate attributeName="opacity" from="0" to="1" begin="2s" dur="0.5s" fill="freeze"/>
    🔗 Secure • Transparent • Decentralized
  </text>
</svg>
# 🚀 Awesome Smart Contract Project

![Solidity](https://img.shields.io/badge/Solidity-0.8.0-blue.svg)
![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?logo=ethereum)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📖 Project Description

Welcome to this exciting smart contract project! This is a beginner-friendly Ethereum smart contract built with Solidity that demonstrates core Web3 concepts in a simple and understandable way. Whether you're new to blockchain development or an experienced developer, this project serves as a great starting point for understanding decentralized applications.

## ⚡ What It Does

This smart contract implements essential blockchain functionality that allows users to:

- **Store and retrieve data** on the Ethereum blockchain
- **Interact securely** with decentralized networks
- **Execute transparent transactions** that are verifiable by anyone
- **Maintain permanent records** that cannot be altered or censored

The contract showcases fundamental Web3 principles while providing a practical foundation for building more complex dApps.

## 🌟 Features

### 🔒 Security First
- Built with Solidity 0.8.0+ safe math operations
- Comprehensive input validation
- Secure transaction handling

### 💡 User-Friendly
- Simple and intuitive functions
- Clear event emissions for transaction tracking
- Gas-efficient operations

### 🔄 Interactive
- Real-time state management
- Transparent contract interactions
- Easy-to-understand function calls

### 🌐 Decentralized
- Fully on-chain operations
- Immutable contract logic
- Trustless execution environment

## 📜 Smart Contract

### Deployed Contract Address
`XXX` *(Replace with your actual contract address)*

### Contract Code
```solidity
//paste your code
```

## 🛠 Getting Started

### Prerequisites
- MetaMask wallet installed
- Basic understanding of Ethereum
- Test ETH (for testnet deployment)

### Installation
1. Clone this repository
2. Install dependencies: `npm install`
3. Compile the contract: `npx hardhat compile`
4. Deploy to your preferred network

## 🤝 Contributing

We welcome contributions! Feel free to fork this project and submit pull requests for any improvements.
<img width="1728" height="770" alt="image" src="https://github.com/user-attachments/assets/9972b6b6-fe68-479b-aad5-bc1067a2d375" />

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
<img width="1728" height="770" alt="image" src="https://github.com/user-attachments/assets/65e64910-ee71-4bcd-8718-430c099fd35c" />

---
<!-- 🚀 Blockchain Animation Showcase -->

<!-- Shields -->
<p align="center">
  <img src="https://img.shields.io/badge/Blockchain-Animated-brightgreen" alt="Blockchain Animated Badge">
  <img src="https://img.shields.io/badge/Web3-Interactive-blue" alt="Web3 Interactive Badge">
  <img src="https://img.shields.io/badge/Animation-CSS3-orange" alt="Animation CSS3 Badge">
</p>

<div align="center">

  <h2>⛓️ Blockchain in Motion ⛓️</h2>

  <!-- Blockchain Animation Container -->
  <div class="blockchain-animation">
    <div class="chain">
      <div class="block" style="animation-delay: 0s">🔗</div>
      <div class="block" style="animation-delay: 0.5s">🔗</div>
      <div class="block" style="animation-delay: 1s">🔗</div>
      <div class="block" style="animation-delay: 1.5s">🔗</div>
      <div class="block" style="animation-delay: 2s">🔗</div>
    </div>
  </div>

</div>

<h2>🎯 What This Repo Demonstrates</h2>
<p>This repository showcases <strong>animated blockchain concepts</strong> using modern web technologies. Watch as blockchain transactions, blocks, and cryptographic processes come to life through smooth animations!</p>

<h2>✨ Live Animations</h2>

<h3>🔄 Real-time Block Creation</h3>

```mermaid
graph LR
    A[Transaction] --> B[Block Formation]
    B --> C[Hash Generation]
    C --> D[Chain Attachment]
    D --> E[Network Consensus]
