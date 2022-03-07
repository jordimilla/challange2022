import XCTest

@testable import Domain

final class GetShowsUseCaseTest: XCTestCase {
    var mockSeriesRepository: MockSeriesRepository!
    var sut: GetShowsUseCase!
    
    override func setUp() {
        mockSeriesRepository = MockSeriesRepository()
        sut = GetShowsUseCase(seriesRepository: mockSeriesRepository)
    }
    
    override func tearDown() {
        mockSeriesRepository = .none
        sut = .none
        super.tearDown()
    }

    func test_should_get_shows() {
        // given
        let shows = [
            Show(id: 0, name: "", image: ShowImage(medium: "", original: "")),
            Show(id: 0, name: "", image: ShowImage(medium: "", original: ""))
        ]
        let params = GetShowsUseCaseParams(page: 1)
        mockSeriesRepository.getShows.result = .success(shows)

        // when
        let captor = CompletionResultCaptor<[Show]>(testCase: self)
        sut.execute(params: params, completion: captor.capture())
        let result =  captor.waitAndGet()

        // THEN
        XCTAssertNil(captor.error())
        XCTAssertNotNil(result)
        XCTAssertTrue(mockSeriesRepository.getShows.called)
        XCTAssertEqual(result?.count, shows.count)
    }
}
