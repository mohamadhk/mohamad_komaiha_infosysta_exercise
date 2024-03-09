import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/data/models/error_model/error_model.dart';


part 'base_pagination_state.freezed.dart';

@freezed
class BasePaginationState<T> with _$BasePaginationState {
  const factory BasePaginationState.data({required T data}) = _Data;

  const factory BasePaginationState.initial() = _Initial;

  const factory BasePaginationState.loading() = _Loading;

  const factory BasePaginationState.paginationLoading() = _PaginationLoading;


  const factory BasePaginationState.error({required ErrorModel errorModel}) = _Error;
}
