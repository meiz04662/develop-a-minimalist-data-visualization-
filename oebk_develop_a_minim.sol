pragma solidity ^0.8.0;

contract MinimalistDataVisualizationTracker {
    struct Datum {
        uint256 timestamp;
        uint256 value;
    }

    Datum[] public data;

    function track(uint256 _value) public {
        Datum memory newDatum;
        newDatum.timestamp = block.timestamp;
        newDatum.value = _value;
        data.push(newDatum);
    }

    function getDataLength() public view returns (uint256) {
        return data.length;
    }

    function getDataAt(uint256 _index) public view returns (uint256, uint256) {
        return (data[_index].timestamp, data[_index].value);
    }
}