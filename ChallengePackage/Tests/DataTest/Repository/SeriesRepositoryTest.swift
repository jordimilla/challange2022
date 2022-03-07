import XCTest

@testable import Domain
@testable import Data

final class SeriesRepositoryTest: XCTestCase {
    var mockApiManager: MockApiManager!
    var sut: SeriesRepositoryImpl!
    
    override func setUp() {
        mockApiManager = MockApiManager()
        sut = SeriesRepositoryImpl(apiManager: mockApiManager)
    }
    
    override func tearDown() {
        mockApiManager = .none
        sut = .none
        super.tearDown()
    }
    
    func test_should_get_shows_from_api() {
        let shows = [
            ShowTO(id: 0, name: "", image: ShowImageTO(medium: "", original: "")),
            ShowTO(id: 0, name: "", image: ShowImageTO(medium: "", original: ""))
        ]
        
        // given
        mockApiManager.getShows.result = .success(shows)
        
        // when
        let captor = CompletionResultCaptor<[Show]>(testCase: self)
        sut.getShows(page: 1, completion: captor.capture())
        let result =  captor.waitAndGet()
        
        // then
        XCTAssertNil(captor.error())
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.count, shows.count)
    
    }
    
    func test_should_get_seasons_from_api() {
        let seasons = [
            SeasonTO(id: 0, image: nil),
            SeasonTO(id: 0, image: nil)
        ]
        
        // given
        mockApiManager.getSeasons.result = .success(seasons)
        
        // when
        let captor = CompletionResultCaptor<[Season]>(testCase: self)
        sut.getSeasons(id: 1, completion: captor.capture())
        let result =  captor.waitAndGet()
        
        // then
        XCTAssertNil(captor.error())
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.count, seasons.count)
    
    }
    
    func test_should_get_episodes_from_api() {
        let episodes = [
            EpisodeTO(id: 0, name: "", summary: "", image: EpisodeImageTO(medium: "", original: "")),
            EpisodeTO(id: 0, name: "", summary: "", image: EpisodeImageTO(medium: "", original: ""))
        ]
        
        // given
        mockApiManager.getEpisodes.result = .success(episodes)
        
        // when
        let captor = CompletionResultCaptor<[Episode]>(testCase: self)
        sut.getEpisodes(id: 1, completion: captor.capture())
        let result =  captor.waitAndGet()
        
        // then
        XCTAssertNil(captor.error())
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.count, episodes.count)
    
    }
}
