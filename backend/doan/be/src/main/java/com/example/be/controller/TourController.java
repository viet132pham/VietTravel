package com.example.be.controller;

import com.example.be.dto.TourDTO;
import com.example.be.entity.Tour;
import com.example.be.repository.TourRepository;
import com.example.be.service.BaseService;
import com.example.be.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
@RestController
@CrossOrigin("*")
@RequestMapping("/api/tour")
public class TourController extends BaseController<Tour> {
    public TourController(BaseService<Tour> baseService) {
        super(baseService);
    }

    @Autowired
    private TourService tourService;

    @Autowired
    private TourRepository tourRepository;

    @GetMapping("/find/trending")
    public List<TourDTO> findCategoryIdInCartitem() {
        return tourService.findTourTrending();
    }

    @GetMapping("/find/top_deal")
    public List<TourDTO> findSaleTour() {
        return tourService.findSaleTour();
    }

    // list gia tri sale day
    @GetMapping("/get/sale_value")
    public List<Integer> findSaleValue() {
        return tourRepository.getAvailableSales();
    }

    @GetMapping("/search/{location}")
    public List<TourDTO> searchTour(@PathVariable(value = "location") String location) {
        return tourService.findTourByLocation(location);
    }

    @GetMapping("/search_by_name/{name}")
    public TourDTO searchTourByName(@PathVariable(value = "name") String name) {
        return tourService.findTourByName(name);
    }

    @GetMapping("/filter")
    public Page<TourDTO> filterTours(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "priceStart", required = false) String priceStart,
            @RequestParam(value = "priceEnd", required = false) String priceEnd,
            @RequestParam(value = "sale", required = false) String sale,
            @RequestParam(value = "sortBy", required = true) String sortBy,
            @RequestParam(value = "pageNumber", required = true) int pageNumber,
            @RequestParam(value = "pageSize", required = true) int pageSize,
            @RequestParam(value = "sortDir", required = false, defaultValue = "asc") String sortDir
    ) {
        Sort sort = Sort.by(sortDir.equalsIgnoreCase("desc") ? Sort.Direction.DESC : Sort.Direction.ASC, sortBy);
        Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, sort);
        return tourService.filterTours(pageable, location, checkIn, checkOut, priceStart, priceEnd, sale);
    }

    @GetMapping("/sort_dto")
    public Page<TourDTO> getSortedAndPaginateDTO(
            @RequestParam(value = "sortBy", required = true) String sortBy,
            @RequestParam(value = "pageNumber", required = true) int pageNumber,
            @RequestParam(value = "pageSize", required = true) int pageSize,
            @RequestParam(value = "sortDir", required = false, defaultValue = "asc") String sortDir) {

        Sort sort = Sort.by(sortDir.equalsIgnoreCase("desc") ? Sort.Direction.DESC : Sort.Direction.ASC, sortBy);
        Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, sort);

        return tourService.getSortedAndPaginateDTO(pageable);
    }

    @GetMapping("/list_pagination_dto")
    public Page<TourDTO> getListPaginationDTO(@RequestParam(value = "pageNumber",required = true) int pageNumber,
                                     @RequestParam(value = "pageSize",required = true) int pageSize,
                                     @RequestParam(value = "sortBy",required = false) String sortBy,
                                     @RequestParam(value = "sortDir",required = false) String sortDir){
        if (sortDir!= null){
            Sort sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
            return tourService.getListPaginationDTO(PageRequest.of(pageNumber-1,pageSize,sort));
        }
        return tourService.getListPaginationDTO(PageRequest.of(pageNumber-1,pageSize));
    }

    @GetMapping("/get_by_id_dto/{id}")
    public TourDTO getById(@PathVariable("id") long id)  {
        return  tourService.getById(id);
    }

}