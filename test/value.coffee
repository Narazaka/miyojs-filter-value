chai = require 'chai'
chai.should()
expect = chai.expect
sinon = require 'sinon'
MiyoFilters = require '../value.js'

describe 'value', ->
	it 'should return value', ->
		ms = sinon.stub()
		ms.call_entry = sinon.stub()
		ms.call_entry.returns 'val'
		argument = value: 'dummy'
		request = ->
		id = 'OnTest'
		stash = null
		return_argument = MiyoFilters.value.call ms, argument, request, id, stash
		ms.call_entry.calledWith('dummy').should.be.true
		expect(return_argument).equals 'val'
