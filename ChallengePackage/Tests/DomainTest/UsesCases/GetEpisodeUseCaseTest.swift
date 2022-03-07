import XCTest

@testable import Domain

final class GetEpisodesUseCaseTest: XCTestCase {
    var mockSeriesRepository: MockSeriesRepository!
    var sut: GetEpisodeUseCase!
    
    override func setUp() {
        mockSeriesRepository = MockSeriesRepository()
        sut = GetEpisodeUseCase(seriesRepository: mockSeriesRepository)
    }
    
    override func tearDown() {
        mockSeriesRepository = .none
        sut = .none
        super.tearDown()
    }

    func test_should_get_episodes() {
        // given
        let episodes = [
            Episode(id: 1, name: "", summary: "", image: EpisodeImage(medium: "", original: "")),
            Episode(id: 1, name: "", summary: "", image: EpisodeImage(medium: "", original: ""))
        ]
        let params = GetEpisodeUseCaseParams(id: 1)
        mockSeriesRepository.getEpisodes.result = .success(episodes)

        // when
        let captor = CompletionResultCaptor<[Episode]>(testCase: self)
        sut.execute(params: params, completion: captor.capture())
        let result =  captor.waitAndGet()

        // THEN
        XCTAssertNil(captor.error())
        XCTAssertNotNil(result)
        XCTAssertTrue(mockSeriesRepository.getEpisodes.called)
        XCTAssertEqual(result?.count, episodes.count)
    }
}
