// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title EduBlocks - Immutable Education Record System
/// @author 
/// @notice This contract stores student records permanently on the blockchain

contract EduBlocks {

    // Structure to store student details
    struct Student {
        string name;
        string course;
        uint256 year;
        string grade;
        address addedBy;
    }

    // Mapping of student ID to their record
    mapping(uint256 => Student) public students;

    // To keep track if a student record exists
    mapping(uint256 => bool) public recordExists;

    // Owner of the contract (e.g., admin or institution)
    address public owner;

    // Events for logging
    event StudentAdded(uint256 studentId, string name, string course, string grade);
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender; // set contract deployer as owner
    }

    // Modifier to allow only owner actions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    // Add a new student record (immutable once added)
    function addStudent(
        uint256 _studentId,
        string memory _name,
        string memory _course,
        uint256 _year,
        string memory _grade
    ) public onlyOwner {
        require(!recordExists[_studentId], "Record already exists for this student");

        students[_studentId] = Student({
            name: _name,
            course: _course,
            year: _year,
            grade: _grade,
            addedBy: msg.sender
        });

        recordExists[_studentId] = true;

        emit StudentAdded(_studentId, _name, _course, _grade);
    }

    // Retrieve student record
    function getStudent(uint256 _studentId) public view returns (
        string memory name,
        string memory course,
        uint256 year,
        string memory grade,
        address addedBy
    ) {
        require(recordExists[_studentId], "Record not found");
        Student memory s = students[_studentId];
        return (s.name, s.course, s.year, s.grade, s.addedBy);
    }

    // Transfer contract ownership (optional admin function)
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid new owner");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}
