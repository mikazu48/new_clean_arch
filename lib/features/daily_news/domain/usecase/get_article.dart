import 'package:new_clean_arch/core/resources/data_state.dart';
import 'package:new_clean_arch/core/usecase/usecase.dart';
import 'package:new_clean_arch/features/daily_news/domain/entities/article.dart';
import 'package:new_clean_arch/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticle();
  }
}
