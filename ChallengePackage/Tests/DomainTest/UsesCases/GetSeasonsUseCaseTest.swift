import XCTest

@testable import Domain

final class GetSeasonsUseCaseTest: XCTestCase {
    var mockSeriesRepository: MockSeriesRepository!
    var sut: GetSeasonsUseCase!
    
    override func setUp() {
        mockSeriesRepository = MockSeriesRepository()
        sut = GetSeasonsUseCase(seriesRepository: mockSeriesRepository)
    }
    
    override func tearDown() {
        mockSeriesRepository = .none
        sut = .none
        super.tearDown()
    }

    func test_should_get_season() {
        // given
        let seasons = [
            Season(id: 0, image: SeasonImage(medium: "", original: "")),
            Season(id: 0, image: SeasonImage(medium: "", original: ""))
        ]
        let params = GetSeasonsUseCaseParams(id: 1)
        mockSeriesRepository.getSeasons.result = .success(seasons)

        // when
        let captor = CompletionResultCaptor<[Season]>(testCase: self)
        sut.execute(params: params, completion: captor.capture())
        let result =  captor.waitAndGet()

        // THEN
        XCTAssertNil(captor.error())
        XCTAssertNotNil(result)
        XCTAssertTrue(mockSeriesRepository.getSeasons.called)
        XCTAssertEqual(result?.count, seasons.count)
    }
}
