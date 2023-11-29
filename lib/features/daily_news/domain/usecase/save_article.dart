import 'package:new_clean_arch/core/usecase/usecase.dart';
import 'package:new_clean_arch/features/daily_news/domain/entities/article.dart';
import 'package:new_clean_arch/features/daily_news/domain/repository/article_repository.dart';

class SaveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;
  SaveArticleUseCase(this._articleRepository);
  @override
  Future<void> call({ArticleEntity? params}) {
    return _articleRepository.saveArticle(params!);
  }
}
